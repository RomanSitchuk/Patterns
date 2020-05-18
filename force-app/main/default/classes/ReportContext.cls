public with sharing class ReportContext {
    ReportState currentState;
    String reportName;
    public ReportContext(ReportState state, String reportName) {
        this.currentState = state;
        this.reportName = reportName;
    }

    public void runReport() {
        this.currentState.runReport(this.reportName);
    }

    public void setState(ReportState state)  
    { 
        this.currentState = state; 
    } 

    public ReportState getState()  
    { 
        return this.currentState; 
    }

    public void setReportName(String reportName)  
    { 
        this.reportName = reportName; 
    } 

    public String getReportName()  
    { 
        return this.reportName; 
    }
}

