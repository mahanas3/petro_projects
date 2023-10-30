class Files {
  String? item;
  int? count;
  String? colour;
  String? screenUrl;
  String? screenCode;
  String? screenTitle;
  String? module;
  String? moduleLogo;
  String? moduleLogoNew;
  String? moduleRight;

  Files(
      {this.item,
        this.count,
        this.colour,
        this.screenUrl,
        this.screenCode,
        this.screenTitle,
        this.module,
        this.moduleLogo,
        this.moduleLogoNew,
        this.moduleRight});

  Files.fromJson(Map<String, dynamic> json) {
    item = json['Item'];
    count = json['Count'];
    colour = json['Colour'];
    screenUrl = json['ScreenUrl'];
    screenCode = json['ScreenCode'];
    screenTitle = json['ScreenTitle'];
    module = json['Module'];
    moduleLogo = json['ModuleLogo'];
    moduleLogoNew = json['ModuleLogoNew'];
    moduleRight = json['ModuleRight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Item'] = this.item;
    data['Count'] = this.count;
    data['Colour'] = this.colour;
    data['ScreenUrl'] = this.screenUrl;
    data['ScreenCode'] = this.screenCode;
    data['ScreenTitle'] = this.screenTitle;
    data['Module'] = this.module;
    data['ModuleLogo'] = this.moduleLogo;
    data['ModuleLogoNew'] = this.moduleLogoNew;
    data['ModuleRight'] = this.moduleRight;
    return data;
  }
}