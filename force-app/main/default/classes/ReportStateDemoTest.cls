@isTest
class ReportStateDemoTest {
    @isTest
    static void testReportState() {
        ReportContext stateContext = new ReportContext('PDF_Report');
        stateContext.runReport();

        stateContext.setReport('SFDCStandard_Report');
        stateContext.runReport();

        // Test default behavior
        stateContext.setReport('Not_Configured_Report');
        stateContext.runReport();

        stateContext.setReport('Remote_Report');
        stateContext.runReport();

        IReportContext stateContextProxy = new ReportContextProxy('PDF_Report');
        stateContextProxy.runReport();
    }  
}
