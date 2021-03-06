import Foundation

class FFKit {

	static var uuid: String {
        return URL(fileURLWithPath:FileManager.default.currentDirectoryPath).lastPathComponent
	}

	static func clearShell() {
		print("Program output")
	}

	static func downloadExec() {
		print("DownloadBinaryFileNowInCurrentVC")
		system("pause ''")
	}

	static func showAI() {
		print("Show activity")
	}

	static func hideAI() {
		print("Hide activity")
	}

	static func createAppDir() {
        	if !FileManager.default.fileExists(atPath: FFKit.appDir) {
            		system("mkdir \(FFKit.appDir)")
        	}
    	}

    	static var appDir: String {
        	return "/home/swiftexec/.db/\(FFKit.uuid)/"
    	}

    	static func contentsOf(dir path:String) -> [String] {
        	var files = [String]()
        	if FileManager.default.fileExists(atPath: path) {
            		for file in try! FileManager.default.contentsOfDirectory(atPath: FFKit.appDir) {
                		files.append(appDir+"/"+file)
            		}
       		}

        	return files
    	}

    	static func contentsOf(file path:String) -> Data? {
        	return FileManager.default.contents(atPath: path)
    	}

    	static func create(dir path: String) {
        	system("mkdir '\(path)'")
    	}

    	static func create(file path: String) {
        	system("touch '\(path)'")
    	}

    	static func remove(item path: String) {
        	system("rm -rf '\(path)'")
    	}

    	static func write(text: String, toFile file:String, append: Bool) throws {
        	try text.write(to: URL(fileURLWithPath:file), atomically: append, encoding: String.Encoding.utf8)
	}

}
