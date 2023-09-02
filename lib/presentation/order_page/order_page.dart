import '../order_page/widgets/orders_item_widget.dart';
import 'bloc/order_bloc.dart';
import 'models/order_model.dart';
import 'models/orders_item_model.dart';
import 'package:farmmart/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OrderPage extends StatefulWidget {
  const OrderPage({Key? key})
      : super(
          key: key,
        );

  @override
  OrderPageState createState() => OrderPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OrderBloc>(
      create: (context) => OrderBloc(OrderState(
        orderModelObj: OrderModel(),
      ))
        ..add(OrderInitialEvent()),
      child: OrderPage(),
    );
  }
}

class OrderPageState extends State<OrderPage>
    with AutomaticKeepAliveClientMixin<OrderPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: getPadding(
              left: 19,
              top: 27,
              right: 27,
            ),
            child: BlocSelector<OrderBloc, OrderState, OrderModel?>(
              selector: (state) => state.orderModelObj,
              builder: (context, orderModelObj) {
                return ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: getVerticalSize(
                        24,
                      ),
                    );
                  },
                  itemCount: orderModelObj?.ordersItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    OrdersItemModel model =
                        orderModelObj?.ordersItemList[index] ??
                            OrdersItemModel();
                    return OrdersItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
