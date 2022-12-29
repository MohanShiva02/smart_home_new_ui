import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:ar_flutter_plugin/widgets/ar_view.dart';
import 'package:flutter/material.dart';

class RoutineScreen extends StatefulWidget {
  const RoutineScreen({Key? key}) : super(key: key);

  @override
  State<RoutineScreen> createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {
   ARSessionManager? arSessionManager;
   ARObjectManager? arObjectManager;

  ARNode? localObject;
  ARNode? webObject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff262A2E),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 10),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       SizedBox(
      //         height: MediaQuery.of(context).size.height*.7,
      //         child: ClipRRect(
      //           borderRadius: BorderRadius.circular(22),
      //           child: ARView(
      //             onARViewCreated: onARViewCreated,
      //           ),
      //         ),
      //       ),
      //       Column(
      //         children: [
      //           ElevatedButton(
      //               onPressed: () {
      //                 setState(() {
      //                   onLocalObjectButtonPressed();
      //                 });
      //
      //               },
      //               child: Text('ADD/Remove Local Objects')),
      //           ElevatedButton(
      //               onPressed: () {
      //                 setState(() {
      //                   onWebObjectButtonPressed();
      //                 });
      //               }, child: Text('ADD/Remove Web Objects')),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
    );
  }

  // void onARViewCreated(
  //     ARSessionManager arSessionManager,
  //     ARObjectManager arObjectManager,
  //     ARAnchorManager arAnchorManager,
  //     ARLocationManager arLocationManager) {
  //   arSessionManager = arSessionManager;
  //   arObjectManager = arObjectManager;
  //
  //   arSessionManager.onInitialize(
  //     showFeaturePoints: false,
  //     showPlanes: false,
  //     customPlaneTexturePath: 'icons8-orthogonal-view-64.png',
  //     showWorldOrigin: true,
  //     handleTaps: false,
  //   );
  //
  //   arObjectManager.onInitialize();
  // }
  //
  // void onLocalObjectButtonPressed() async {
  //   if (localObject != null) {
  //     localObject = null;
  //     arObjectManager!.removeNode(localObject!);
  //   } else {
  //     var newNode = ARNode(
  //         type: NodeType.localGLTF2,
  //         uri: 'assets/110145-logout (1).gif');
  //     localObject = newNode;
  //     bool? didAddLocalNode = await arObjectManager!.addNode(newNode);
  //     if (didAddLocalNode!) {
  //       localObject = newNode;
  //     } else {
  //       localObject = null;
  //     }
  //   }
  // }
  //
  // void onWebObjectButtonPressed() async {
  //   if (webObject != null) {
  //     webObject = null;
  //     arObjectManager!.removeNode(webObject!);
  //   } else {
  //     var newNode = ARNode(
  //         type: NodeType.webGLB,
  //         uri: 'assets/110145-logout (1).gif');
  //     webObject = newNode;
  //     bool? didAddLocalNode = await arObjectManager!.addNode(newNode);
  //     if (didAddLocalNode!) {
  //       webObject = newNode;
  //     } else {
  //       webObject = null;
  //     }
  //   }
  // }
}
