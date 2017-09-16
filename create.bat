@ echo off
title ::Java Structure::
color f4
@echo Name of public folder

	set /p "c=>"
	md %c%
	cd %c%
:make war file

echo 		@ echo off								>>war.bat	
echo 		title ::WAR file generator::			>>war.bat
echo 		color f4								>>war.bat
echo 		@echo Name of the war file to create	>>war.bat
echo 		set /p "war=>"							>>war.bat
echo 		jar cf %%war%%.war *						>>war.bat

	md WEB-INF
	cd WEB-INF
echo 		^<web-app^>								>>web.xml
echo 		^</web-app^>							>>web.xml
	md classes
	md lib
	cd classes
:make class file for java file

echo		@ echo off 								>>class.bat
echo        title ::CLASS file generator:: 			>>class.bat
echo		color 4f								>>class.bat
echo		DIR *.java								>>class.bat	
echo		@echo Name of file to be compiled		>>class.bat
echo		set /p"java=>"							>>class.bat
echo		javac %%java%%.java						>>class.bat
echo		echo want to wait	y/n					>>class.bat
echo		set /p"choice=>"						>>class.bat
echo		if %%choice%%==Y 	call class.bat				>>class.bat
echo		if %%choice%%==y 	call class.bat			>>class.bat	
: end




	