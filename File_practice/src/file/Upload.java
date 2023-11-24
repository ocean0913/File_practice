package file;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload")
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String saveDirectory = "C:\\Users\\19_web_kth\\git\\File_practice\\File_practice\\WebContent\\fileRepository";
		MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory, 1024*1024*30, "utf-8", new DefaultFileRenamePolicy());
		
		Enumeration<?> files = multipartRequest.getFileNames();
		
		while (files.hasMoreElements()) {
			
			String element = (String)files.nextElement();
			
			if(multipartRequest.getOriginalFileName(element) != null) {
				
				String originalFileName = multipartRequest.getOriginalFileName(element);
				UUID uuid = UUID.randomUUID();
				String renameFileName = uuid + originalFileName;
				
				File originalFile = new File(saveDirectory + "\\" + originalFileName);
				File renameFile = new File(saveDirectory + "\\" + renameFileName);
				originalFile.renameTo(renameFile);		
				
				
			}
			
		}
		
	}

}
