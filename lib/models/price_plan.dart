class PricePlan{
  
  String planName;
  String price;
  String hostingSpace;
  String websiteDesign;
  String numEmails;


  PricePlan({this.planName, this.price, this.hostingSpace, this.websiteDesign, this.numEmails});
}

List pricePlanList = [
  PricePlan(planName: 'Basic', price: 'R60',hostingSpace: '5GB',
      websiteDesign: 'Static Website',  numEmails: '3'),

  PricePlan(planName: 'Standard', price: 'R160', hostingSpace: '10GB',
    websiteDesign: 'Custom Responsive Website', numEmails: 'Unlimited'),

  PricePlan(planName: 'Pro', price: 'R160', hostingSpace: '10GB',
      websiteDesign: 'Custom Responsive Website', numEmails: 'Unlimited' )

];