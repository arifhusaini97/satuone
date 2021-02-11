class NotificationModel {
  final int notiId;
  final int notiProType;
  final int byProId;
  final int notiTypeId;
  final int notiProTotal;
  final String notiImageUrl;
  final String notiDetDescr;
  final String notiDetNew;
  final String notiDetPrev;
  final int updatedDatetimeNumber;
  final String updatedDatetimeUnit;

  NotificationModel(
      {this.notiId,
      this.notiProType,
      this.byProId,
      this.notiTypeId,
      this.notiProTotal,
      this.notiImageUrl,
      this.notiDetDescr,
      this.notiDetNew,
      this.notiDetPrev,
      this.updatedDatetimeNumber,
      this.updatedDatetimeUnit,
      });
}
  List<NotificationModel> dummyDataNotifications = [
    NotificationModel(
      notiId: 1,
      notiProType: 1,
      byProId: 2,
      notiTypeId: 18,
      notiProTotal: 1,
      notiDetDescr: "friend-friend",
      notiDetNew: "Pending",
      notiDetPrev: null,
      notiImageUrl: "assets/images/person_dp_profile/arif_husaini_1.jpg",
      updatedDatetimeNumber: 15,
      updatedDatetimeUnit: "min"
    ),
    NotificationModel(
      notiId: 2,
      notiProType: 1,
      byProId: 3,
      notiTypeId: 22,
      notiProTotal: 1,
      notiDetDescr: "roommate-roommate",
      notiDetNew: "Approved",
      notiDetPrev: "Pending",
      notiImageUrl: "assets/images/person_dp_profile/arif_husaini_1.jpg",
      updatedDatetimeNumber: 1,
      updatedDatetimeUnit: "min"
    ),
    NotificationModel(
      notiId: 3,
      notiProType: 1,
      byProId: 2,
      notiTypeId: 31,
      notiProTotal: 1,
      notiDetDescr: null,
      notiDetNew: "Tahniah. Aku doakan semoga kau berjaya.",
      notiDetPrev: null,
      notiImageUrl: "assets/images/gallery/gallery_1.jpg",
      updatedDatetimeNumber: 15,
      updatedDatetimeUnit: "min"
    ),
    NotificationModel(
      notiId: 4,
      notiProType: 1,
      byProId: 2,
      notiTypeId: 32,
      notiProTotal: 329,
      notiDetDescr: "Segalanya bermula disini...",
      notiDetNew: "1",
      notiDetPrev: null,
      notiImageUrl: "assets/images/gallery/gallery_1.jpg",
      updatedDatetimeNumber: 15,
      updatedDatetimeUnit: "min"
    ),
    NotificationModel(
      notiId: 5,
      notiProType: 1,
      byProId: 2,
      notiTypeId: 33,
      notiProTotal: 1,
      notiDetDescr: "Segalanya bermula disini...",
      notiDetNew: "1",
      notiDetPrev: null,
      notiImageUrl: "assets/images/gallery/gallery_1.jpg",
      updatedDatetimeNumber: 15,
      updatedDatetimeUnit: "min"
    ),
    NotificationModel(
      notiId: 6,
      notiProType: 2,
      byProId: 3,
      notiTypeId: 48,
      notiProTotal: 1,
      notiDetDescr: "Persembahan Warisan JPK Kali Ke-3",
      notiDetNew: "Pending",
      notiDetPrev: null,
      notiImageUrl: "assets/images/event_dp_profile/event_3.jpg",
      updatedDatetimeNumber: 15,
      updatedDatetimeUnit: "min"
    ),
    NotificationModel(
      notiId: 7,
      notiProType: 2,
      byProId: 2,
      notiTypeId: 93,
      notiProTotal: 1,
      notiDetDescr: "Program Pemantapan Organisasi",
      notiDetNew: "0",
      notiDetPrev: null,
      notiImageUrl: "assets/images/event_dp_profile/event_2.jpg",
      updatedDatetimeNumber: 15,
      updatedDatetimeUnit: "min"
    ),
    NotificationModel(
      notiId: 8,
      notiProType: 2,
      byProId: 2,
      notiTypeId: 95,
      notiProTotal: 1,
      notiDetDescr: "Program Pemantapan Organisasi",
      notiDetNew: "7",
      notiDetPrev: null,
      notiImageUrl: "assets/images/event_dp_profile/event_2.jpg",
      updatedDatetimeNumber: 15,
      updatedDatetimeUnit: "min"
    ),
    NotificationModel(
      notiId: 9,
      notiProType: 1,
      byProId: 2,
      notiTypeId: 34,
      notiProTotal: 1,
      notiDetDescr: "Hari Keluarga Tahun 2019",
      notiDetNew: "Pending",
      notiDetPrev: null,
      notiImageUrl: "assets/images/event_dp_profile/event_1.jpg",
      updatedDatetimeNumber: 15,
      updatedDatetimeUnit: "min"
    ),
    NotificationModel(
      notiId: 10,
      notiProType: 1,
      byProId: 4,
      notiTypeId: 73,
      notiProTotal: 1,
      notiDetDescr: "No. 1 Of The Most Active Student!",
      notiDetNew: "Achieved",
      notiDetPrev: null,
      notiImageUrl: "assets/images/person_dp_profile/arif_husaini_1.jpg",
      updatedDatetimeNumber: 15,
      updatedDatetimeUnit: "min"
    ),
  ];
