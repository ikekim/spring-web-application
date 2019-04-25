stage 'CI'
node('master') {
    try{
        stage ('checkout') {
            git 'https://github.com/ikekim/spring-web-application.git'
	}
    } catch (err) {
      notify("Error ${err}")
      echo "Caught: ${err}"
      currentBuild.rsult = 'FAILURE'
    }
}

stage 'CD'
node('master') {
    try{
        stage ('package') {    
            sh label: '', script: 'mvn clean package'
	    }	
        notify('success')
    } catch (err) {
      echo "Caught: ${err}"
      currentBuild.rsult = 'FAILURE'
    }
}

def notify(status){
    emailext (
      to: "ike.x.kim@gmail.com",
      subject: "${status}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
      body: """<p>${status}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
        <p>Check console output at <a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a></p>""",
    )
}
