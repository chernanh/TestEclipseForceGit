<aura:application description="Sample Stand-Alone App using Chartjs Component." extends="ltng:outApp" access="global">
	<aura:dependency resource="markup://c:Chartjs"/>
    <aura:dependency resource="markup://c:ChartjsRefreshChartButton"/>
    
    <div style="margin: 20px auto; width: 95%; text-align: right;">
        <c:ChartjsRefreshChartButton label="Refresh" />
    </div>
    <c:Chartjs apexDataProvider="chartjsSampleLineChartDataProvider" chartTitle="Monthly Data Analysis" />
    <c:Chartjs apexDataProvider="chartjsSamplePieChartDataProvider" chartTitle="Distributed Data Analysis" />
    <c:Chartjs apexDataProvider="chartjsSampleLineChartDataProvider" chartTitle="Monthly Data Analysis" />
    <c:Chartjs apexDataProvider="chartjsSamplePieChartDataProvider" chartTitle="Distributed Data Analysis" />
    <c:Chartjs apexDataProvider="chartjsSampleLineChartDataProvider" chartTitle="Monthly Data Analysis" />
    <c:Chartjs apexDataProvider="chartjsSamplePieChartDataProvider" chartTitle="Distributed Data Analysis" />
    <c:Chartjs apexDataProvider="chartjsSampleLineChartDataProvider" chartTitle="Monthly Data Analysis" />
    <c:Chartjs apexDataProvider="chartjsSamplePieChartDataProvider" chartTitle="Distributed Data Analysis" />
    <c:Chartjs apexDataProvider="chartjsSampleLineChartDataProvider" chartTitle="Monthly Data Analysis" />
    <c:Chartjs apexDataProvider="chartjsSamplePieChartDataProvider" chartTitle="Distributed Data Analysis" />
    <c:Chartjs apexDataProvider="chartjsSampleLineChartDataProvider" chartTitle="Monthly Data Analysis" />
    <c:Chartjs apexDataProvider="chartjsSamplePieChartDataProvider" chartTitle="Distributed Data Analysis" />
    
</aura:application>