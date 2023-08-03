$.context.SalesOrderHeader= {
	request: {},
	response:{}
}

var body={

	"SoldToParty": $.context.SoldToParty,

	 "SalesOrderType": $.context.SalesOrderType,

	"TotalNetAmount": $.context.TotalNetAmount.toString(),

	"SalesOrganization": $.context.SalesOrderType,

	"DistributionChannel": $.context.DistributionChannel,

	"OrganizationDivision": $.context.OrganizationDivision

 }

$.context.SalesOrderHeader.request = body

console.log($.context===$context)



 