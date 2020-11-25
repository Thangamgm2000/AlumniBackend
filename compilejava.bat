del /S *.class
cd src\main\webapp\WEB-INF\classes\Model
javac JobsBase.java
javac AchievementsBase.java
javac -cp ..\ UserBase.java
javac -cp ..\ DataConnector.java
javac -cp ..\ RandomIdGenerator.java
cd ..\ServletPackage
javac -cp ..\ PerformLogin.java
