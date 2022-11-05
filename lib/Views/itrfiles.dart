import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class FilesPage extends StatefulWidget {
  final List<PlatformFile> files;
  final ValueChanged<PlatformFile> onOpenedFile;

  const FilesPage({Key key, this.files, this.onOpenedFile}) : super(key: key);

  @override
  _FilesPageState createState() => _FilesPageState();
}

class _FilesPageState extends State<FilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Files"),
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: widget.files.length,
          itemBuilder: (context, index) {
            final file = widget.files[index];
            return buildFile(file);
          },
        ),
      ),
    );
  }

  Widget buildFile(PlatformFile file) {
    // final kb = file.size / 1024;
    // final mb = kb / 102455;
    // final fileSize = mb >= 1
    //     ? '${mb.toStringAsFixed(3)} MB'
    //     : '${kb.toStringAsFixed(200)} KB';
    final extension = file.extension ?? "none";
    // final color = getColor(extension);

    return InkWell(
      onTap: () => OpenFile.open(file.path),
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text('.$extension'),
                ),
              ),
              const SizedBox(height: 8,),
              Text(file.name,
              overflow: TextOverflow.ellipsis,),
              // Text(fileSize,
              //   overflow: TextOverflow.ellipsis,),
            ],
          ),
        ),
      ),
    );
  }
}
