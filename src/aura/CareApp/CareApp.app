<aura:application access="GLOBAL" implements="force:appHostable,forceCommunity:availableForAllPageTypes" extends="ltng:outApp">
	<ltng:require styles="/resource/SLDS092/assets/styles/salesforce-lightning-design-system-ltng.css" />
    <aura:dependency resource="markup://c:ComponentField" />

    <div class="slds"> 
    	<c:FieldComponent />
    </div>
    <script src="/resource/jquery">
    
    </script>
</aura:application>