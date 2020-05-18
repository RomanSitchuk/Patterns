public with sharing class StandardReport implements ReportState{
    private static StandardReport instance;

    private StandardReport() {
    }

    public void runReport(String reportName) {
        System.debug('Running StandardReport');
        // Generate standard report url with passed in parameters(e.g., reportId?pc1=0&pc2=0&pc3=0&pn0=eq&ptable0=0&pv0="Not+Reportable")
    }

    public static StandardReport getInstance(){
        if (instance == null) {
            instance = new StandardReport();
        } 
        return instance;
    }
}