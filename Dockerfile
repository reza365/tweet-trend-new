FROM openjdk:8
	ADD ./jenkins/workspace/multibranch-pipeline_main/jarstaging/com/valaxy/demo-workshop/2.1.2/demo-workshop-2.1.2.jar demo-workshop.jar
	ENTRYPOINT ["java", "-jar", "demo-workshop.jar"]
