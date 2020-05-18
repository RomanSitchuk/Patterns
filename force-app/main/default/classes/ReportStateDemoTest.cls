@isTest
class ReportStateDemoTest {
    @isTest
    static void testReportState() {
        ReportContext stateContext = new ReportContext(VFReport.getInstance(), 'VR_TicketReport');
        stateContext.runReport();

        stateContext.setState(StandardReport.getInstance());
        stateContext.setReportName('VR_Complaint_Details');
        stateContext.runReport();
    }
    
}
