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
        echo '執行測試腳本'
        sh ''' chmod +x run.sh || echo "無法設置執行權限" 
        ./run.sh
        '''
      }
    }
    stage('歸檔報告'){
      echo ('歸檔測試報告')
      publishHTML([
        reportDir: '.',
        reportFile: 'reportFile.html',
        reportName: '測試報告'
      ])
    }
  }
  post{
    always{
      echo '建置流程結束'
    }
  }
}
