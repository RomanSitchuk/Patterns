public with sharing class VFReport implements ReportState {
    private static final VFReport instance = new VFReport();
    
    private VFReport() {
    }

    public void runReport(String reportName) {
        System.debug('Running VFReport');
        // Generate report url with passed in parameters (e.g., .../apex/RiskAsstCustomReport?names=)
    }

    public static VFReport getInstance() {
        return instance;
    }
}
