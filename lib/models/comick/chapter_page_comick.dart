class ChapterPageComick {
  Chapter? chapter;
  bool? matureContent;
  List<Chapters>? chapters;
  String? canonical;
  String? seoTitle;
  String? seoDescription;
  String? chapTitle;
  bool? checkVol2Chap1;

  ChapterPageComick(
      {this.chapter,
      this.matureContent,
      this.chapters,
      this.canonical,
      this.seoTitle,
      this.seoDescription,
      this.chapTitle,
      this.checkVol2Chap1});

  ChapterPageComick.fromJson(Map<String, dynamic> json) {
    chapter =
        json['chapter'] != null ? Chapter.fromJson(json['chapter']) : null;

    matureContent = json['matureContent'];
    if (json['chapters'] != null) {
      chapters = <Chapters>[];
      json['chapters'].forEach((v) {
        chapters!.add(Chapters.fromJson(v));
      });
    }

    canonical = json['canonical'];
    seoTitle = json['seoTitle'];
    seoDescription = json['seoDescription'];
    chapTitle = json['chapTitle'];
    checkVol2Chap1 = json['checkVol2Chap1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (chapter != null) {
      data['chapter'] = chapter!.toJson();
    }

    data['matureContent'] = matureContent;
    if (chapters != null) {
      data['chapters'] = chapters!.map((v) => v.toJson()).toList();
    }

    data['canonical'] = canonical;
    data['seoTitle'] = seoTitle;
    data['seoDescription'] = seoDescription;
    data['chapTitle'] = chapTitle;
    data['checkVol2Chap1'] = checkVol2Chap1;
    return data;
  }
}

class Chapter {
  int? id;
  String? chap;
  String? title;
  String? server;
  String? hid;
  String? hash;
  List<String>? groupName;
  String? createdAt;
  String? mdid;
  int? commentCount;
  int? upCount;
  int? downCount;
  String? status;
  String? lang;
  List<Images>? images;

  Chapter(
      {this.id,
      this.chap,
      this.title,
      this.server,
      this.hid,
      this.hash,
      this.groupName,
      this.createdAt,
      this.mdid,
      this.commentCount,
      this.upCount,
      this.downCount,
      this.status,
      this.lang,
      this.images});

  Chapter.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    chap = json['chap'];

    title = json['title'];
    server = json['server'];
    hid = json['hid'];
    hash = json['hash'];

    createdAt = json['created_at'];
    mdid = json['mdid'];
    commentCount = json['comment_count'];
    upCount = json['up_count'];
    downCount = json['down_count'];
    status = json['status'];
    lang = json['lang'];

    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['chap'] = chap;

    data['title'] = title;
    data['server'] = server;
    data['hid'] = hid;
    data['hash'] = hash;
    data['group_name'] = groupName;

    data['created_at'] = createdAt;
    data['mdid'] = mdid;
    data['comment_count'] = commentCount;
    data['up_count'] = upCount;
    data['down_count'] = downCount;
    data['status'] = status;
    data['lang'] = lang;

    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Images {
  String? url;
  int? w;
  int? h;

  Images({this.url, this.w, this.h});

  Images.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    w = json['w'];
    h = json['h'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['w'] = w;
    data['h'] = h;
    return data;
  }
}

class Chapters {
  String? chap;
  String? vol;
  String? hid;
  String? lang;
  int? id;
  String? title;

  Chapters({this.chap, this.vol, this.hid, this.lang, this.id, this.title});

  Chapters.fromJson(Map<String, dynamic> json) {
    chap = json['chap'];
    vol = json['vol'];
    hid = json['hid'];
    lang = json['lang'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['chap'] = chap;
    data['vol'] = vol;
    data['hid'] = hid;
    data['lang'] = lang;
    data['id'] = id;
    data['title'] = title;
    return data;
  }
}