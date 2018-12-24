class TransModel {
  final month;
  final date;
  final year;
  final status;
  final timeStamp;
  final quotaSize;
  final amount;

  TransModel(
      {this.month,
      this.date,
      this.year,
      this.status,
      this.timeStamp,
      this.quotaSize,
      this.amount});
}

List<TransModel> transData = [
  TransModel(
      month: 'December',
      date: '19',
      year: '2018',
      status: 'success',
      timeStamp: '6 Hours ago',
      quotaSize: '400MB',
      amount: 'N500'),
  TransModel(
      month: 'December',
      date: '25',
      year: '2018',
      status: 'success',
      timeStamp: '34 Hours ago',
      quotaSize: '1000MB',
      amount: 'N700'),
  TransModel(
      month: 'December',
      date: '30',
      year: '2018',
      status: 'fail',
      timeStamp: '54 Hours ago',
      quotaSize: '1500MB',
      amount: 'N1000'),
  TransModel(
      month: 'January',
      date: '2',
      year: '2019',
      status: 'success',
      timeStamp: '2 Hours ago',
      quotaSize: '200MB',
      amount: 'N150'),
  TransModel(
      month: 'January',
      date: '6',
      year: '2019',
      status: 'fail',
      timeStamp: '7 Hours ago',
      quotaSize: '50MB',
      amount: 'N100'),
  TransModel(
      month: 'January',
      date: '18',
      year: '2019',
      status: 'fail',
      timeStamp: '9 Hours ago',
      quotaSize: '3000MB',
      amount: 'N2000'),
  TransModel(
      month: 'January',
      date: '26',
      year: '2019',
      status: 'success',
      timeStamp: '10 Hours ago',
      quotaSize: '400MB',
      amount: 'N500'),
];
