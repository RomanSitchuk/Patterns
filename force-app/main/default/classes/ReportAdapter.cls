public with sharing class ReportAdapter implements ReportState {
   
    RemoteReport remoteReport;
    public ReportAdapter(RemoteReport remoteReport) { 
        this.remoteReport = remoteReport; 
    } 

    public void runReport(String reportName) {
        this.remoteReport.downloadReport(reportName);
    }
}
