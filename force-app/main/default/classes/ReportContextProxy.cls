public with sharing class ReportContextProxy implements IReportContext{
    ReportContext reportContext;
    ReportState state;
    String reportName;

    public ReportContextProxy(ReportState state, String reportName) {
        this.state = state;
        this.reportName = reportName;
    }

    public void runReport() {
        if (isAccesible()) {
            if (reportContext == null) {
                this.reportContext = new ReportContext(this.state, this.reportName);
            }
            this.reportContext.runReport();
        } else { 
            throw new NoAccessException('You have no access.');
        }
    }

    private Boolean isAccesible() {
        Boolean isAccesible = true;
        // Logic here for checking user access(e.g., select Hierarchy Custom Settings);
        return isAccesible;
    }

    public class NoAccessException extends Exception {}       

}
