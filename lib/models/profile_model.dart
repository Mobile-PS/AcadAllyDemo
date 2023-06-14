
class ProfileModel {
  List<Tenant>? tenant;

  ProfileModel({this.tenant});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    if (json['tenant'] != null) {
      tenant = <Tenant>[];
      json['tenant'].forEach((v) {
        tenant!.add(new Tenant.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tenant != null) {
      data['tenant'] = this.tenant!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tenant {
  String? companyid;
  String? classname;
  String? userpic;
  String? userfullname;
  String? companyname;
  String? shortname;

  Tenant(
      {this.companyid,
        this.classname,
        this.userpic,
        this.userfullname,
        this.companyname,
        this.shortname});

  Tenant.fromJson(Map<String, dynamic> json) {
    companyid = json['companyid'];
    classname = json['classname'];
    userpic = json['userpic'];
    userfullname = json['userfullname'];
    companyname = json['companyname'];
    shortname = json['shortname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['companyid'] = this.companyid;
    data['classname'] = this.classname;
    data['userpic'] = this.userpic;
    data['userfullname'] = this.userfullname;
    data['companyname'] = this.companyname;
    data['shortname'] = this.shortname;
    return data;
  }
}