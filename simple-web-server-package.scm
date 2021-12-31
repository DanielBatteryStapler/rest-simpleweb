(use-modules
	(guix packages)
	(guix gexp)
	((guix licenses) #:prefix license:)
	(guix build-system cmake)
	(guix git-download)
	(gnu packages autotools)
	(gnu packages build-tools)
	(gnu packages cmake)
	(gnu packages pkg-config)
	(gnu packages tls)
	(gnu packages boost))

(package
	(name "simple-web-server")
	(version "3.1.1")
	(inputs
		`(("boost" ,boost)
		("openssl" ,openssl)))
	(native-inputs 
		`(("cmake" ,cmake)
		("pkg-config" ,pkg-config)))
	(propagated-inputs '())
	(source (origin
		(method git-fetch)
		(uri
			(git-reference
				(url "https://gitlab.com/eidheim/Simple-Web-Server.git")
				(commit (string-append "v" version))))
		(sha256
			(base32
				"1g30jagf7dkbvxx3nhn43kbcsss83jl4ycpgyp3r7q660k4ws4gw"))))
	(build-system cmake-build-system)
	(synopsis "Simple-Web-Server: A very simple, fast, multithreaded, platform independent HTTP and HTTPS server and client library implemented using C++11")
	(description
		"Simple-Web-Server is a very simple, fast, multithreaded, platform independent HTTP and HTTPS server and client library implemented using C++11")
	(home-page "https://gitlab.com/eidheim/Simple-Web-Server")
	(license license:expat))

