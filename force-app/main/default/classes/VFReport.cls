public with sharing class VFReport implements ReportState{
    private static VFReport instance;
    
    private VFReport() {
    }

    public void runReport(String reportName) {
        System.debug('Running VFReport');
        // Generate report url with passed in parameters (e.g., .../apex/RiskAsstCustomReport?names=)
    }

    public static VFReport getInstance(){
        if (instance == null) {
            instance = new VFReport();
        } 
        return instance;
    }
}
