cd src\main\webapp\WEB-INF\classes\Model
del /S *.class
javac JobsBase.java
javac AchievementsBase.java
javac -cp ..\ UserBase.java
javac -cp ..\ DataConnector.java