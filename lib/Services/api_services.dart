import 'dart:convert';
import 'dart:developer';
import 'package:gst_app/Models/api_response.dart';
import 'package:gst_app/Models/bank-response.dart';
import 'package:gst_app/Models/bank-verify.dart';
import 'package:gst_app/Models/capital-gain.dart';
import 'package:gst_app/Models/get-pan-details-byPanNo.dart';
import 'package:gst_app/Models/gst-return.dart';
import 'package:gst_app/Models/ifsc.dart';
import 'package:gst_app/Models/link-adhaar-status.dart';
import 'package:gst_app/Models/login.dart';
import 'package:gst_app/Models/mca.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gst_app/Models/register.dart';
import 'package:gst_app/Models/search-gst-number.dart';
import 'package:http/http.dart' as http;
import '../Models/Compound-annual-growth-rate.dart';
import '../Models/Emi.dart';
import '../Models/Fixed-Deposit.dart';
import '../Models/GST-Cal.dart';
import '../Models/GSTR-2A/B2B.dart';
import '../Models/GstLogin.dart';
import '../Models/HRA.dart';
import '../Models/LoginUser.dart';
import '../Models/LumpSum.dart';
import '../Models/MIS.dart';
import '../Models/Nps.dart';
import '../Models/PinCodeInfo.dart';
import '../Models/RegisterResponse.dart';
import '../Models/SearchBankByName.dart';
import '../Models/SearchBankByPan.dart';
import '../Models/SearchbyPan.dart';
import '../Models/business-loan.dart';
import '../Models/carLoanEmi.dart';
import '../Models/compound-interest.dart';
import '../Models/depriciation.dart';
import '../Models/homeLoanEmi.dart';
import '../Models/new-regime.dart';
import '../Models/old-regime.dart';
import '../Models/personal-loan-emi.dart';
import '../Models/recursive-deposit.dart';
import '../Models/simple-interest.dart';
import '../Models/sip-gain.dart';
import '../Models/tds.dart';
import '../Models/track-gst-return.dart';

class ApiServices {
  FlutterSecureStorage storage = const FlutterSecureStorage();
  String baseUrl = "https://mom.itaxeasy.com/api";

  Future<http.StreamedResponse> postFile(String url, String file) async {
    url = formater(url);
    var request = http.MultipartRequest("POST", Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath("img", file));
    request.headers.addAll({
      "Content-Type": "multipart/from-data",
    });
    var response = request.send();
    return response;
  }

  String formater(String url) {
    return baseUrl + url;
  }

  // REGISTER API
  Future<ApiResponse<RegisterUser>> register(Register registers) async {
    final url = Uri.parse(baseUrl + "/sign-up");
    final headers = {'Content-Type': 'application/json'};
    final jsonBody = jsonEncode(registers);
    final response = await http.post(url, headers: headers, body: jsonBody);
    log(response.statusCode.toString());
    log(response.body);
    log(jsonBody);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final jsonData = jsonDecode(response.body);
      return ApiResponse<RegisterUser>(
          data: RegisterUser.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    final jsonData = jsonDecode(response.body);
    Map<String, dynamic> errorData = jsonData["error"];
    List<dynamic> errorMessage = errorData["email"];
    await storage.write(key: "emailMessage", value: errorMessage.toString());

    return ApiResponse<RegisterUser>(
        resposeCode: response.statusCode,
        error: true,
        errorMessage: "An error occurred");
  }

// LOGIN API

  Future<ApiResponse<LoginUser>> login(Login login) async {
    final url = Uri.parse(baseUrl + "/login");
    final headers = {'Content-Type': 'application/json'};
    final jsonBody = jsonEncode(login);
    final response = await http.post(url, headers: headers, body: jsonBody);
    log(response.statusCode.toString());
    log(response.body);
    log(jsonBody);
    if (response.statusCode == 200) {
      final output = jsonDecode(response.body);
      Map<String, dynamic> output1 = output['results'];
      Map<String, dynamic> output2 = output1['data'];

      await storage.write(key: "token", value: output1["token"]);
      await storage.write(key: "username", value: output2["first_name"]);
      await storage.write(key: "lastname", value: output2["last_name"]);
      return ApiResponse<LoginUser>(
          data: LoginUser.fromJson(output), resposeCode: response.statusCode);
    }

    return ApiResponse<LoginUser>(
        resposeCode: response.statusCode,
        error: true,
        errorMessage: "An error occurred");
  }

  // MCA
  Future<ApiResponse<Mca>> mca(String cin) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/mca/company-details?cin=$cin");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final response = await http.get(
      url,
      headers: headers,
    );
    print(response);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      Map<String, dynamic> data = jsonData["company"];
      print(response.body);
      print(response.statusCode);
      return ApiResponse<Mca>(
          data: mcaFromJson(response.body), resposeCode: response.statusCode);
    }
    return ApiResponse<Mca>(error: true, errorMessage: "An error occurred");
  }

  // MCA END
  Future<ApiResponse<Ifsc>> ifsc(String ifsc) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/bank/get-details?ifsc=$ifsc");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final response = await http.get(
      url,
      headers: headers,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      Map<String, dynamic> data = jsonData["bank"];
      print(response.body);
      print(response.statusCode);
      return ApiResponse<Ifsc>(data: ifscFromJson(response.body));
    }
    return ApiResponse<Ifsc>(error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<BankResponse>> bankVerify(Bankdetails verify) async {
    String authToken = await storage.read(key: "token");

    final url = Uri.parse(baseUrl + "/bank/verify-account");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(verify);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      Map<String, dynamic> data = jsonData["bankResponse"];
      print(response.body);
      print(response.statusCode);
      return ApiResponse<BankResponse>(
          data: bankResponseFromJson(response.body),
          resposeCode: response.statusCode);
    }
    return ApiResponse<BankResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<PanAdhaarStatus>> linkAdhaarStatus(
      String pan, String adhaar) async {
    String authToken = await storage.read(key: "token");

    final url = Uri.parse(
        baseUrl + "/pan/check-pan-aadhaar-status?pan=$pan&aadhar=$adhaar");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final response = await http.get(
      url,
      headers: headers,
    );
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["bank"];
      print(response.body);
      print(response.statusCode);
      return ApiResponse<PanAdhaarStatus>(
          data: panAdhaarStatusFromJson(response.body),
          resposeCode: response.statusCode);
    }
    return ApiResponse<PanAdhaarStatus>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<SearchGstNumber>> searchGstNumber(String gstNumber) async {
    await storage.delete(key: "taxByGSTIN");

    String authToken = await storage.read(key: "token");

    final url = Uri.parse(baseUrl + "/gsp/search/gstin?gstin=$gstNumber");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final response = await http.get(
      url,
      headers: headers,
    );
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      Map<String, dynamic> data = jsonData["company"];
      // List<SearchGstNumber>.from(
      //     json.decode(response.body).map((x) => SearchGstNumber.fromJson(x)));
      // List<Map<String,dynamic>> date  = jsonData["adadr"];
      print(response.body);
      print(response.statusCode);

      return ApiResponse<SearchGstNumber>(
          data: searchGstNumberFromJson(response.body),
          resposeCode: response.statusCode);
    }
    Map<String, dynamic> jsonData = jsonDecode(response.body);

    await storage.write(key: "taxByGSTIN", value: jsonData["message"]);
    return ApiResponse<SearchGstNumber>(
        error: true,
        errorMessage: "An error occurred",
        resposeCode: response.statusCode);
  }

  Future<ApiResponse<PanDetails>> verifyPan(String panNumber) async {
    String authToken = await storage.read(key: "token");

    final url = Uri.parse(baseUrl + "/pan/get-pan-details?pan=$panNumber");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final response = await http.get(
      url,
      headers: headers,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      Map<String, dynamic> data = jsonData["company"];
      print(response.body);
      print(response.statusCode);
      return ApiResponse<PanDetails>(
          data: panDetailsFromJson(response.body),
          resposeCode: response.statusCode);
    }
    return ApiResponse<PanDetails>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<TrackGstReturn>> gstReturn(GstReturn gstReturn) async {
    await storage.delete(key: "returnGSTIN");
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/gsp/gst/return/track");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(gstReturn);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      // Map<String, dynamic>
      final jsonData = jsonDecode(response.body);
      // final notes = <EFiledlist>[];
      // for (var item in jsonData) {
      //   notes.add(EFiledlist.fromJson(item));
      // }
      // Map<String, dynamic> data = jsonData["company"];
      print(response.body);
      print(response.statusCode);
      return ApiResponse<TrackGstReturn>(
          data: TrackGstReturn.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    await storage.write(key: "returnGSTIN", value: jsonData["message"]);
    return ApiResponse<TrackGstReturn>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<RegimeResponse>> gstNewRegime(NewRegime newRegime) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/income-tax/new-regime");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(newRegime);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<RegimeResponse>(data: RegimeResponse.fromJson(data));
    }
    return ApiResponse<RegimeResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<OldRegimeResponse>> gstOldRegime(
      OldRegime oldRegime) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/income-tax/old-regime");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(oldRegime);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<OldRegimeResponse>(
          data: OldRegimeResponse.fromJson(data));
    }
    return ApiResponse<OldRegimeResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<FixedDepositResponse>> fixedDeposit(
      FixedDeposit fixedDeposit) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/miscellaneous/fixed-deposit");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(fixedDeposit);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(response.body);
      print(response.statusCode);
      return ApiResponse<FixedDepositResponse>(
          data: FixedDepositResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<FixedDepositResponse>(
        error: true,
        errorMessage: "An error occurred",
        resposeCode: response.statusCode);
  }

  Future<ApiResponse<SimpleInterestResponse>> simpleInterest(
      SimpleInterest simpleInterest) async {
    String authToken = await storage.read(key: "token");
    final url =
        Uri.parse(baseUrl + "/calculator/miscellaneous/simple-interest");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(simpleInterest);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<SimpleInterestResponse>(
          data: SimpleInterestResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<SimpleInterestResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<CompoundInterestResponse>> compoundInterest(
      CompoundInterest compoundInterest) async {
    String authToken = await storage.read(key: "token");
    final url =
        Uri.parse(baseUrl + "/calculator/miscellaneous/compound-interest");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(compoundInterest);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];
      print(response.body);
      print(response.statusCode);
      return ApiResponse<CompoundInterestResponse>(
          data: CompoundInterestResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<CompoundInterestResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<EmiResponse>> emi(Emi emi) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/miscellaneous/emi");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(emi);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<EmiResponse>(
          data: EmiResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<EmiResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<CagrResponse>> cagr(Cagr emi) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/miscellaneous/cagr");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(emi);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<CagrResponse>(
          data: CagrResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<CagrResponse>(
        error: true,
        errorMessage: "An error occurred",
        resposeCode: response.statusCode);
  }

  Future<ApiResponse<SipGainResponse>> sipGain(SipGain sipGain) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/miscellaneous/sip-gain");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(sipGain);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<SipGainResponse>(
          data: SipGainResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<SipGainResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<LumpSumResponse>> lumpSum(LumpSum lumpSum) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/miscellaneous/lump-sum");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(lumpSum);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<LumpSumResponse>(
          data: LumpSumResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<LumpSumResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<RecursiveDepositResponse>> recursiveDeposite(
      RecursiveDeposit recursiveDeposit) async {
    String authToken = await storage.read(key: "token");
    final url =
        Uri.parse(baseUrl + "/calculator/miscellaneous/recursive-deposit");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(recursiveDeposit);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<RecursiveDepositResponse>(
          data: RecursiveDepositResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<RecursiveDepositResponse>(
        error: true,
        errorMessage: "An error occurred",
        resposeCode: response.statusCode);
  }

  Future<ApiResponse<HraCalResponse>> hra(HraCal hraCal) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/miscellaneous/hra");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(hraCal);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(response.body);
      print(response.statusCode);
      return ApiResponse<HraCalResponse>(
          data: HraCalResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<HraCalResponse>(
        error: true,
        errorMessage: "An error occurred",
        resposeCode: response.statusCode);
  }

  Future<ApiResponse<MisCalResponse>> mis(MisCal misCal) async {
    String authToken = await storage.read(key: "token");
    final url =
        Uri.parse(baseUrl + "/calculator/miscellaneous/post-office-mis");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(misCal);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<MisCalResponse>(
          data: MisCalResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<MisCalResponse>(
        error: true,
        errorMessage: "An error occurred",
        resposeCode: response.statusCode);
  }

  Future<ApiResponse<BusinessLoanResponse>> businessLoan(
      BusinessLoan businessLoan) async {
    String authToken = await storage.read(key: "token");
    final url =
        Uri.parse(baseUrl + "/calculator/miscellaneous/business-loan-emi");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(businessLoan);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<BusinessLoanResponse>(
          data: BusinessLoanResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<BusinessLoanResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<DepriciationCalResponse>> depriciationCal(
      DepriciationCal depriciationCal) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/miscellaneous/depreciation");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(depriciationCal);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<DepriciationCalResponse>(
          data: DepriciationCalResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<DepriciationCalResponse>(
        error: true,
        errorMessage: "An error occurred",
        resposeCode: response.statusCode);
  }

  Future<ApiResponse<HomeLoanResponse>> homeLoanEmi(
      HomeLoanEmi homeLoanEmi) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/miscellaneous/home-loan-emi");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(homeLoanEmi);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<HomeLoanResponse>(
          data: HomeLoanResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<HomeLoanResponse>(
        error: true,
        errorMessage: "An error occurred",
        resposeCode: response.statusCode);
  }

  Future<ApiResponse<CarLoanResponse>> carLoanEmi(CarLoan carLoan) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/miscellaneous/car-loan-emi");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(carLoan);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<CarLoanResponse>(
          data: CarLoanResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<CarLoanResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<PersonalLoanResponse>> personalLoanEmi(
      PersonalLoan personalLoan) async {
    String authToken = await storage.read(key: "token");
    final url =
        Uri.parse(baseUrl + "/calculator/miscellaneous/personal-loan-emi");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(personalLoan);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<PersonalLoanResponse>(
          data: PersonalLoanResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<PersonalLoanResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<Tds>> tds(Tds tds) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/tds");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(tds);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      Map<String, dynamic> data = jsonData["calculated_tds"];
      print(response.body);
      print(response.statusCode);
      return ApiResponse<Tds>(data: tdsFromJson(response.body));
    }
    return ApiResponse<Tds>(error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<CapitalGainResponse>> capitalGain(
      CapitalGain capitalGain) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(
        baseUrl + "/calculator/miscellaneous/capital-gain-calculator");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(capitalGain);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<CapitalGainResponse>(
          data: CapitalGainResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<CapitalGainResponse>(
        error: true,
        errorMessage: "An error occurred",
        resposeCode: response.statusCode);
  }

  Future<ApiResponse<NpsResponse>> npsGain(Nps nps) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/miscellaneous/nps-returns");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(nps);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<NpsResponse>(
          data: NpsResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<NpsResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<GstCalcuResponse>> gstCal(GstCalcu gst) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/calculator/miscellaneous/gst-calculator");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode(gst);
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      print(response.body);
      print(response.statusCode);
      return ApiResponse<GstCalcuResponse>(
          data: GstCalcuResponse.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<GstCalcuResponse>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<SearchGstByPan>> searchGstByPan(
      String panNumber, String code) async {
    String authToken = await storage.read(key: "token");

    final url = Uri.parse(baseUrl +
        "/gsp/search/gstin-by-pan?pan=$panNumber&gst_state_code=$code");
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final response = await http.get(
      url,
      headers: headers,
    );
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return ApiResponse<SearchGstByPan>(
          data: SearchGstByPan.fromJson(jsonData),
          resposeCode: response.statusCode);
    }
    return ApiResponse<SearchGstByPan>(
        error: true,
        errorMessage: "An error occurred",
        resposeCode: response.statusCode);
  }

  Future<ApiResponse<B2B>> gstr2Ab2b(
      String gstin, String year, String month) async {
    String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl +
        "/gsp/gst/tax-payer/gstrs/gstr-2a/b2b?gstin=$gstin&year=$year&month=$month&ctin=");

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    // final body = jsonEncode(gstReturn);
    final response = await http.get(
      url,
      headers: headers,
    );
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      print(response.body);
      print(response.statusCode);
      return ApiResponse<B2B>(
          data: B2B.fromJson(jsonData), resposeCode: response.statusCode);
    }
    return ApiResponse<B2B>(
        error: true,
        errorMessage: "An error occurred",
        resposeCode: response.statusCode);
  }

  Future<ApiResponse<bool>> gstLogin(GstSign login) async {
    String authToken = await storage.read(key: "token");

    final url = Uri.parse(baseUrl + "/gsp/gst/tax-payer/generate-otp");

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    final jsonBody = jsonEncode(login);
    final response = await http.post(url, headers: headers, body: jsonBody);
    print(response.statusCode);
    print(response.body);
    print(jsonBody);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> output = jsonDecode(response.body);
      await storage.write(key: "LogInMessage", value: output["message"]);
      return ApiResponse<bool>(data: true, resposeCode: response.statusCode);
    }
    return ApiResponse<bool>(error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<SearchBanksByPin>> searchBankByPin(String pin) async {
    // String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/banks/banklistbypin");
    final headers = {
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode({"pincode": pin});
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      print(url);
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<SearchBanksByPin>(
          data: SearchBanksByPin.fromJson(jsonData));
    }
    return ApiResponse<SearchBanksByPin>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<SearchBanksByName>> searchBankByName(
      String pin, String name) async {
    // String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/banks/bankbypinandname");
    final headers = {
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode({"pincode": pin, "bankname": name});
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200 || SearchBanksByName().bank.isNotEmpty) {
      print(url);
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<SearchBanksByName>(
          data: SearchBanksByName.fromJson(jsonData));
    }
    print("asdfghjk");
    return ApiResponse<SearchBanksByName>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<SearchBanksByName>> searchBankByCity(String city) async {
    // String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/banks/bankbycityname");
    final headers = {
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode({
      "city": city,
    });
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200 || SearchBanksByName().bank.isNotEmpty) {
      print(url);
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<SearchBanksByName>(
          data: SearchBanksByName.fromJson(jsonData));
    }
    print("asdfghjk");
    return ApiResponse<SearchBanksByName>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<SearchBanksByName>> searchBankByCityAndBankName(
      String city, String bankName) async {
    // String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/banks/bankbycitynameandbankname");
    final headers = {
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode({
      "city": city,
      "bankname": bankName,
    });
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200 || SearchBanksByName().bank.isNotEmpty) {
      print(url);
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];

      print(response.body);
      print(response.statusCode);
      return ApiResponse<SearchBanksByName>(
          data: SearchBanksByName.fromJson(jsonData));
    }
    print("asdfghjk");
    return ApiResponse<SearchBanksByName>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<PinCodeInfo>> pinCodeInfo(String pin) async {
    // String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/pincode/pincodeinfo");
    final headers = {
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode({"pincode": pin});
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      print(url);
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];
      print(response.body);
      print(response.statusCode);
      return ApiResponse<PinCodeInfo>(data: PinCodeInfo.fromJson(jsonData));
    }
    return ApiResponse<PinCodeInfo>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<PinCodeInfo>> cityInfo(String city) async {
    // String authToken = await storage.read(key: "token");
    final url = Uri.parse(baseUrl + "/pincode/pincodebycity");
    final headers = {
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer $authToken',
    };
    final body = jsonEncode({"city": city});
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      print(url);
      final jsonData = jsonDecode(response.body);
      // Map<String, dynamic> data = jsonData["calculated_tax"];
      print(response.body);
      print(response.statusCode);
      return ApiResponse<PinCodeInfo>(data: PinCodeInfo.fromJson(jsonData));
    }
    return ApiResponse<PinCodeInfo>(
        error: true, errorMessage: "An error occurred");
  }

  Future<ApiResponse<bool>> googleLogin() async {
    final url = Uri.parse(baseUrl + "/auth/google");
    final headers = {
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer $authToken',
    };
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      print(response.statusCode);

      return ApiResponse<bool>(data: true, resposeCode: response.statusCode);
    }
    return ApiResponse<bool>(error: true, resposeCode: response.statusCode);
  }
}
