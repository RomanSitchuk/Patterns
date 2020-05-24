public with sharing class ReportContext implements IReportContext{
    ReportState currentState;
    String reportName;
    Map<String, ReportState> reportStates = new Map<String, ReportState>();
    public ReportContext(String reportName) {
        initStates();
        this.currentState = getStateByNameOrDefault(reportName); 
        this.reportName = reportName;
    }

    public void runReport() {
        this.currentState.runReport(this.reportName);
    }

    public void setReport(String reportName) {
        this.reportName = reportName;
        this.currentState = getStateByNameOrDefault(reportName);
    } 

    public String getReportName() { 
        return this.reportName; 
    }

    void initStates() {
        reportStates.put('PDF_Report', VFReport.getInstance());
        reportStates.put('SFDCStandard_Report', StandardReport.getInstance());
        reportStates.put('Remote_Report', new ReportAdapter(new RemoteReportImpl()));
    } 

    ReportState getStateByNameOrDefault(String reportName) {
        return this.reportStates.get(reportName) != null ? this.reportStates.get(reportName) : VFReport.getInstance();
    }
}

