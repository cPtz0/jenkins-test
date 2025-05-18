pipeline{
  agent any

  stages {
    stage('Clone Repository'){
      steps{
        echo '拉取代碼中...'
        //Jenkins會自動拉取代碼，不需要手動git pull
      }
    }
    stage('Run Script'){
      steps {
        echo '開始執行run.sh'
        sh ''' chmod +x run.sh || echo "無法設置執行權限" 
        ./run.sh
        '''
      }
    }
  }
  post{
    always{
      echo '建置流程結束'
    }
  }
}
