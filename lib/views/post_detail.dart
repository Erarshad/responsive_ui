import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hyperhire_assessment/const/assets.dart';
import 'package:hyperhire_assessment/const/style.dart';
import 'package:hyperhire_assessment/utils/dot.dart';
import 'package:hyperhire_assessment/utils/post_header.dart';
import 'package:hyperhire_assessment/views/post_detail_viewModel.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../const/colors.dart';
import '../const/geometry.dart';
import '../const/strings.dart';
import '../const/style.dart';
import '../utils/chip.dart';
import '../utils/comment.dart';

class PostDetailView extends StatefulWidget {
  const PostDetailView({super.key});

  @override
  State<PostDetailView> createState() => _PostDetailViewState();
}

class _PostDetailViewState extends State<PostDetailView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PostDetailViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
            backgroundColor: whiteColor,
            appBar: AppBar(
              automaticallyImplyLeading: false, // Don't show the leading button
              titleSpacing: 0.0,
              title: Padding(
                  padding: defaultPagePadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: "Back button pressed",
                              toastLength: Toast.LENGTH_SHORT);
                        },
                        child:
                            const Icon(Icons.arrow_back_ios, color: blackColor),
                      ),
                      Text(
                        appBarTitle,
                        style: boldTextStyle,
                      ),
                      Image.asset(
                        bellicon,
                        height: 20,
                        width: 18,
                      )
                      // Your widgets here
                    ],
                  )),
              backgroundColor: whiteColor,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding( padding: defaultPagePadding,child: 
                    postHeader("안녕 나 응애 ", "1일전g", "165cm", "53kg", () {
                      print("button pressed");
                    }, "팔로우")),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(padding: defaultPagePadding,child:
                    Text(
                      "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
                      style: boldliteTextStyle,
                    ) ,),
                    Padding(padding: defaultPagePadding,child: 
                    Text(
                      "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~혹시 어떤 상품이 제일 괜찮았어?",
                      style: normalTextStyle,
                    )),
                    Padding(padding: defaultPagePadding,child: 
                    Text(
                      "후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이제일 재밌었다던데 맞아???",
                      style: normalTextStyle,
                    )),
                    Padding(padding: defaultPagePadding,child: 
                    Text(
                      "올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!",
                      style: normalTextStyle,
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(padding: defaultPagePadding,child: 
                    Wrap(
                        children: List.generate(viewModel.tags.length, (index) {
                      return customchip(viewModel.tags[index]);
                    }).toList())),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(padding: defaultPagePadding,child: 
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(
                          img,
                          height: 45.h,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                dot(whiteColor),
                                dot(grayColor),
                                dot(grayColor),
                                dot(grayColor),
                                dot(grayColor)
                              ],
                            )),
                      ],
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(padding: defaultPagePadding,child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          heart,
                          height: 17.33.sp,
                          width: 20.sp,
                        ),
                        Text(
                          "5",
                          style: subtitleTextStylegray,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Image.asset(
                          comment,
                          height: 17.33.sp,
                          width: 20.sp,
                        ),
                        Text(
                          "5",
                          style: subtitleTextStylegray,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Image.asset(
                          bookmark,
                          height: 17.33.sp,
                          width: 20.sp,
                        ),
                        Image.asset(
                          more,
                          height: 17.33.sp,
                          width: 20.sp,
                        ),
                      ],
                    )),
                    const SizedBox(
                      height: 12.0,
                    ),
                    const Divider(
                      height: 2.0,
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    Padding(padding: defaultPagePadding,child: 
                    commentSection()),
                    const SizedBox(
                      height: 14.0,
                    ),
                    const Divider(
                      height: 2.0,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Padding(padding: defaultPagePadding,child: 
                    typePanel()),
                     const SizedBox(
                      height: 5.0,
                    ),
                  
                  ]),
            ));
      },
    );
  }
}

Widget typePanel() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(children: [
      Image.asset(image,height:20.sp ,width: 20.sp,),
        const SizedBox(
                      width: 16.0,
                    ),
      Text("댓글을 남겨주세요.",style: simpleTextStyle,)
      ],),

       Text("등록",style: simpleTextStyle,)


    ],
  );
}

Widget commentSection() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      commentView("안녕 나 응애 ", "1일전g", false, true,
          imageavatar: CircleAvatar(
              backgroundColor: avatarBg,
              child: ClipRRect(
     borderRadius: BorderRadius.circular(300.0),
     child: 
              Image.asset(
                avatar,
                height: 68.sp,
                width: 38.sp,
              ))),
          commenttext: Text(
            "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니꼭 봐주세용~!",
            style: normalTextStyle,
          ),
          thread: commentView(
            "ㅇㅅㅇ",
            "1일전g",
            true,
            false,
            imageavatar: CircleAvatar(
                backgroundColor: pingBgAvatar,
                child: ClipRRect(
     borderRadius: BorderRadius.circular(300.0),
     child: 
                Image.asset(
                  pinkavatar,
                  height: 68.sp,
                  width: 38.sp,
                ))),
            commenttext: Text(
              "오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다",
              style: normalTextStyle,
            ),
          )),
    ],
  );
}
