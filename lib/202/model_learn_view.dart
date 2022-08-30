import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'a');

  @override
  void initState() {
    super.initState();
    final user1 = PostModel();
    user1.body = 'Hello';

    final user2 = PostModel2(1, 2, 'a', 'b');
    user2.body = 'a';

    final user3 = PostModel3(1, 2, 'a', 'b');

    final user4 = PostModel4(userId: 1, id: 2, title: 'a', body: 'b');

    final user5 = PostModel5(userId: 1, id: 2, title: 'a', body: 'b');
    user5.userId;

    final user6 = PostModel6(userId: 1, id: 2, title: 'a', body: 'b');

    final user7 = PostModel7();

    // Service
    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = PostModel8(title: 'On pressed');
            user9.updateBody('sedat');
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not has any data'),
      ),
    );
  }
}
