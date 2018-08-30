//: Playground - noun: a place where people can play


var str = "Hello, playground"
// List of cities in provinces.
//var sindhCities = Array<String>(["Karachi", "Hyderabad", "Larkana", "Sukkar", "Nawabshah", "Mirpus Khas", "Jacobabad", "Mirpur", "Shikarpur", "Daddu", "Khairpur"]);
var sindhCities = Array<String>(["Karachi", "Hyderabad", "Larkana", "Sukkar", "Nawabshah", "Mirpus Khas"]);
var punjabCities = Array<String>(["Lahore", "Rawalpindi", "Gujranwala", "Multan", "Sargodha"]);
var kpkCities = Array<String>(["Peshawar", "Mardan", "Bunur", "Kohat", "Abbottabad"]);
var balochistanCities = Array<String>(["Quetta", "Khuzdar", "Chaman", "Turbat", "Sibi"]);
// Each provinces data.
var provincesData = Dictionary<String,[String]>();
// Ways to create a dictionary.
//var someDictionary:[String:String] = [:];
//var someDic:Dictionary<String,String> = [:]
//var dic: [String:[String]] = [:]
provincesData["Sindh"] = sindhCities;
provincesData["Punjab"] = punjabCities;
provincesData["KPK"] = kpkCities;
provincesData["Balochistan"] = balochistanCities;
//print(provincesData);

// Accessing each province data
for (key,value) in provincesData {
//    print("\(key) & \(value)");
    print("Province: \(key)");
    for city in value {
        print("\(city) in \(key)");
    }
    print();
}
