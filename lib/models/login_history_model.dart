class LoginHistoryModel {
  final startTime;
  final endTime;
  final location;

  LoginHistoryModel({this.startTime, this.endTime, this.location});
}

List<LoginHistoryModel> historyData = [
  LoginHistoryModel(
    startTime: '03:30',
    endTime: '06:00',
    location: 'Abraham Hall'
  ),
  LoginHistoryModel(
    startTime: '08:00',
    endTime: '11:30',
    location: 'Sarah Hall'
  ),
  LoginHistoryModel(
    startTime: '12:24',
    endTime: '14:19',
    location: 'Chapel'
  ),
  LoginHistoryModel(
    startTime: '14:19',
    endTime: '14:33',
    location: 'Chapel'
  ),
  LoginHistoryModel(
    startTime: '15:00',
    endTime: '15:55',
    location: 'NCB'
  ),
  LoginHistoryModel(
    startTime: '16:13',
    endTime: '16:25',
    location: 'Daniel Hall'
  ),
  LoginHistoryModel(
    startTime: '16:45',
    endTime: '16:55',
    location: 'Main Cafeteria'
  ),
  LoginHistoryModel(
    startTime: '17:20',
    endTime: '17:35',
    location: 'Chapel'
  )
];
