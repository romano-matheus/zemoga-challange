({
	loadAccounts : function(component) {
		var currentUserId = $A.get("$SObjectType.CurrentUser.Id");
		var action = component.get("c.getAccountsByUserId");
        action.setParams({
            "userId": currentUserId
        });
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.accounts", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	}
})