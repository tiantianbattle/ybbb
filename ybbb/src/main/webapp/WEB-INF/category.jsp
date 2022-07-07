<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>全部电影分类</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/category.css">
    <link rel="stylesheet" href="iconfont/font_1746803_6ag03603o6c/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/category.js"></script>
    <script src="js/search.js"></script>
</head>

<body>
    <div class="header">
        <div class="w">
            <div class="logo fl">
                <a href="<%=request.getContextPath() %>/home">歪比巴卜电影</a>
            </div>
            <div class="searchBar fl">
                <input type="text" placeholder="搜索电影、电视剧、综艺、影人">
                <div class="btn_search">搜索</div>
            </div>
            <div class="sideBar fr">
                <ul>
                    <li class="vip">
                        <a href="javascript:;">
                            <i></i>
                            <span>开通会员</span>
                        </a>
                    </li>
                    <li class="record">
                        <a href="javascript:;">
                            <i class="iconfont"></i>
                            <span>看过</span>
                        </a>
                    </li>
                    <li class="sub">
                        <a href="javascript:;">
                            <i class="iconfont"></i>
                            <span>关注</span>
                        </a>
                    </li>
                    <li class="upload">
                        <a href="javascript:;">
                            <i class="iconfont"></i>
                            <span>上传</span>
                        </a>
                    </li>
                    <li class="app">
                        <a href="javascript:;">
                            <i class="iconfont"></i>
                            <span>客户端</span>
                        </a>
                    </li>
                    <li class="login">
                        <c:if test='<%=session.getAttribute("userId")== null %>'>
                            <a href="<%=request.getContextPath() %>/login">
                                <img src='images/user/null.png' alt="">
                                <img class="tag" src="images/login_tag.png" alt="">
                            </a>
                        </c:if>
                        <c:if test='<%=session.getAttribute("userId")!= null %>'>
                            <a href="<%=request.getContextPath() %>/user">
                                <img src='images/user/<%=session.getAttribute("userId") %>.jpg' alt="">
                            </a>
                            <div class="user-panel">
                                <div class="row">
                                    <div class="portrait">
                                        <img src="images/user/${user.id}.jpg" alt="">
                                    </div>
                                    <div class="name">${user.name}</div>
                                </div>
                                <div class="logout">
                                    <a href="logout">退出登录</a>
                                </div>
                            </div>
                        </c:if>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="nav">
        <div class="w clearfix">
            <div class="dropdown fl">
                <a class="dt">全部电影分类</a>
            </div>
            <div class="navitems fl">
                <ul>
                    <li>
                        <a href="<%=request.getContextPath() %>/ticket">影讯&购票</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath() %>/movie">选电影</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath() %>/tv">电视剧</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath() %>/rank">排行榜</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath() %>/comment">影评</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath() %>/year">2019年度榜单</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath() %>/report">2019书影音报告</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="main w">
        <div class="hd">
            <h1>选影视</h1>
            <div class="category">
                <div class="cate-warp" id="form">
                    <span class="active">全部形式</span>
                    <span>电影</span>
                    <span>电视剧</span>
                    <span>综艺</span>
                    <span>动漫</span>
                    <span>纪录片</span>
                    <span>短片</span>
                </div>
                <div class="cate-warp" id="type">
                    <span class="active">全部类别</span>
                    <span>剧情</span>
                    <span>喜剧</span>
                    <span>动作</span>
                    <span>爱情</span>
                    <span>科幻</span>
                    <span>动画</span>
                    <span>悬疑</span>
                    <span>惊悚</span>
                    <span>恐怖</span>
                    <span>犯罪</span>
                    <span>同行</span>
                    <span>音乐</span>
                    <span>歌舞</span>
                    <span>传记</span>
                    <span>历史</span>
                    <span>战争</span>
                    <span>西部</span>
                    <span>奇幻</span>
                    <span>冒险</span>
                    <span>灾难</span>
                    <span>武侠</span>
                    <span>情色</span>
                </div>
                <div class="cate-warp" id="region">
                    <span class="active">全部地区</span>
                    <span>中国大陆</span>
                    <span>中国香港</span>
                    <span>中国台湾</span>
                    <span>美国</span>
                    <span>日本</span>
                    <span>韩国</span>
                    <span>英国</span>
                    <span>法国</span>
                    <span>德国</span>
                    <span>意大利</span>
                    <span>西班牙</span>
                    <span>印度</span>
                    <span>泰国</span>
                    <span>俄罗斯</span>
                    <span>伊朗</span>
                    <span>加拿大</span>
                    <span>澳大利亚</span>
                    <span>爱尔兰</span>
                    <span>瑞典</span>
                    <span>巴西</span>
                    <span>丹麦</span>
                </div>
                <div class="cate-warp">
                    <span class="active">全部特色</span>
                    <span>经典</span>
                    <span>青春</span>
                    <span>文艺</span>
                    <span>搞笑</span>
                    <span>励志</span>
                    <span>魔幻</span>
                    <span>感人</span>
                    <span>女性</span>
                    <span>黑帮</span>
                </div>
                <div class="cate-warp">
                    <span class="active">全部年代</span>
                    <span>2020</span>
                    <span>2019</span>
                    <span>2018</span>
                    <span>2017</span>
                    <span>2010年代</span>
                    <span>2000年代</span>
                    <span>90年代</span>
                    <span>80年代</span>
                    <span>70年代</span>
                    <span>60年代</span>
                    <span>更早</span>
                </div>
            </div>
            <div class="tag-warp">
                <div class="tags">
                    <div class="item active">近期热门</div>
                    <div class="item">标记最多</div>
                    <div class="item">评分最高</div>
                    <div class="item">最新上映</div>
                </div>
            </div>
        </div>
        <div class="item-warp">
            <c:forEach var="sk" items="${movieList}" varStatus="i">
                <div class="item">
                    <a href="<%=request.getContextPath() %>/details?id=${sk.id}">
                        <div class="img"><img src="images/movie/${sk.id}.jpg" title="${sk.name}"></div>
                        <span class="title">${sk.name}</span>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="footer w">
        <div class="links">
            <a href="javascript:;">关于我们</a>
            <span>|</span>
            <a href="javascript:;">联系我们</a>
            <span>|</span>
            <a href="javascript:;">联系客服</a>
            <span>|</span>
            <a href="javascript:;">在线反馈</a>
            <span>|</span>
            <a href="javascript:;">侵权投诉</a>
            <span>|</span>
            <a href="javascript:;">广告服务</a>
            <span>|</span>
            <a href="javascript:;">用户协议</a>
            <span>|</span>
            <a href="javascript:;">隐私政策</a>
            <span>|</span>
            <a href="javascript:;">English Site</a>
        </div>
        <div class="copyright">
            <p>
                Copyright© 北京师范大学珠海分校 版权所有
                <span>|</span>
                地址：广东省珠海市香洲区唐家湾金凤路18号
                <span>|</span>
                电话: 0086-756-3683393
            </p>
            <p>
                粤公网安备 44049102496217号
                <span>|</span>
                粤ICP备05026012号
            </p>
        </div>
    </div>
</body>