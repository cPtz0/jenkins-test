pipeline{
  agent any

  stages {
    stage('Run Script'){
      steps {
        echo '執行測試腳本'
        sh ''' chmod +x run.sh || echo "無法設置執行權限" 
        ./run.sh
        '''
      }
    }
    stage('Publish Report'){
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
