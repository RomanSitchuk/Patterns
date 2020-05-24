public with sharing class ReportAdapter implements IReportState {
   
    IRemoteReport remoteReport;
    public ReportAdapter(IRemoteReport remoteReport) { 
        this.remoteReport = remoteReport; 
    } 

    public void runReport(String reportName) {
        this.remoteReport.downloadReport(reportName);
    }
}
