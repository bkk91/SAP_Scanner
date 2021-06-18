package sap.scanner.user;

import java.io.FileInputStream;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Service;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

@Service
public class userInitialize {

	@PostConstruct
	public void initialize() {
		try {
			FileInputStream serviceAccount = 
					new FileInputStream("src/main/resources/serviceAccountKey.json");

			FirebaseOptions options = new FirebaseOptions.Builder()
					.setCredentials(GoogleCredentials.fromStream(serviceAccount))
					.setDatabaseUrl("https://fb-scanner-12f82.firebasio.com")
					.build();
			
			FirebaseApp.initializeApp(options);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
