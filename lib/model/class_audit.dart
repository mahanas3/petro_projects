class Audit {
  String? item;
  int? count;
  String? colour;
  String? icon;
  String? screenUrl;
  String? screenCode;
  String? screenTitle;

  Audit(
      {this.item,
        this.count,
        this.colour,
        this.icon,
        this.screenUrl,
        this.screenCode,
        this.screenTitle});

  Audit.fromJson(Map<String, dynamic> json) {
    item = json['Item'];
    count = json['Count'];
    colour = json['Colour'];
    icon = json['Icon'];
    screenUrl = json['ScreenUrl'];
    screenCode = json['ScreenCode'];
    screenTitle = json['ScreenTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Item'] = this.item;
    data['Count'] = this.count;
    data['Colour'] = this.colour;
    data['Icon'] = this.icon;
    data['ScreenUrl'] = this.screenUrl;
    data['ScreenCode'] = this.screenCode;
    data['ScreenTitle'] = this.screenTitle;
    return data;
  }
}