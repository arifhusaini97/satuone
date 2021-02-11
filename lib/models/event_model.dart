class EventModel {
  final int id;
  final String eventDescr;
  final String eventDpProfile;
  final String eventFullname;
  final String organizationUsername;
  final String eventDate;
  final String eventStartTime;
  final String eventEndTime;
  final String eventDay;
  final int eventAttendantStatus;

  EventModel(
      {this.id,
      this.eventDescr,
      this.eventDpProfile,
      this.eventFullname,
      this.organizationUsername,
      this.eventDate,
      this.eventStartTime,
      this.eventEndTime,
      this.eventDay,
      this.eventAttendantStatus}
  );
  static List<EventModel> fetchAll() {
    return dummyDataEvents;
  }
  
  static EventModel fetchByID(int eventID){
    //fetch all locations, iterate them and when we find the location
    //with the ID we want, return it immediately.
    List <EventModel> events = EventModel.fetchAll();
    for(var i=0; i<events.length; i++){
      if (events[i].id==eventID){
        return events[i];
      }
    }
    return null;
  }
}
  List<EventModel> dummyDataEvents = [
    EventModel(
      id: 1,
      eventDpProfile: "assets/images/event_dp_profile/event_1.jpg",
      eventFullname: "Hari Keluarga Tahun 2019",
      organizationUsername: "demaths",
      eventDescr: "Menyatukan ukhuwah sesama kita.",
      eventDate: "ongoing",
      eventStartTime: '1945',
      eventEndTime: '2200',
      eventDay: "Sat",
      eventAttendantStatus: 2,
    ),
    EventModel(
      id: 2,
      eventDpProfile: "assets/images/event_dp_profile/event_2.jpg",
      eventFullname: "Program Pemantapan Organisasi",
      organizationUsername: "mppuitmn9",
      eventDescr: "Menguatkan pemahaman cara menguruskan organisasi dengan baik.",
      eventDate: "< 1 h",
      eventStartTime: '2100',
      eventEndTime: '2300',
      eventDay: "Sat",
      eventAttendantStatus: 0,
    ),
    EventModel(
      id: 3,
      eventDpProfile: "assets/images/event_dp_profile/event_3.jpg",
      eventFullname: "Persembahan Warisan JPK Kali Ke-12",
      organizationUsername: "jpksrmbn3",
      eventDescr: "Persembahan yang baik datang dari jiwa yang bersih.",
      eventDate: "< 12 h",
      eventStartTime: '0800',
      eventEndTime: '1200',
      eventDay: "Sun",
      eventAttendantStatus: 1,
    ),
    EventModel(
      id: 4,
      eventDpProfile: "assets/images/event_dp_profile/event_4.jpg",
      eventFullname: "Charity Movie Night",
      organizationUsername: "gpmsn9",
      eventDescr: "Berhibur sambil menderma.",
      eventDate: "< 24 h",
      eventStartTime: '2000',
      eventEndTime: '2300',
      eventDay: "Sun",
      eventAttendantStatus: 0,
    ),
    EventModel(
      id: 5,
      eventDpProfile: "assets/images/event_dp_profile/event_5.jpg",
      eventFullname: "Malam Induksi",
      organizationUsername: "wataniahs3",
      eventDescr: "Marilah sertai kami.",
      eventDate: "< 24 h",
      eventStartTime: '2000',
      eventEndTime: '2330',
      eventDay: "Sun",
      eventAttendantStatus: 0,
    ),
    EventModel(
      id: 6,
      eventDpProfile: "assets/images/event_dp_profile/event_6.jpg",
      eventFullname: "Senamrobik",
      organizationUsername: "jpksrmbn3",
      eventDescr: "Badan sihat, otak cerdas.",
      eventDate: "24/04/19",
      eventStartTime: '1730',
      eventEndTime: '1830',
      eventDay: "Wed",
      eventAttendantStatus: 0,
    ),
  ];