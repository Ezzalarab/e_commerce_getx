import '../../app/exports.dart';

class HendleDataView extends StatelessWidget {
  final RequestStatus requestStatus;
  final Widget widget;
  const HendleDataView({
    super.key,
    required this.requestStatus,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    if (requestStatus == RequestStatus.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (requestStatus == RequestStatus.success) {
      return widget;
    } else if (requestStatus == RequestStatus.failure) {
      return Center(
        child: Text(requestStatus.toString()),
      );
    }
    return const Center(
      child: Text('Something went wrong'),
    );
  }
}
