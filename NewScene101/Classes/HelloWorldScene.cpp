#include "HelloWorldScene.h"
#include "cocostudio/CocoStudio.h"

USING_NS_CC;

using namespace cocostudio::timeline;
using namespace ui;
using namespace CocosDenshion;

Scene* HelloWorld::createScene()
{
    // 'scene' is an autorelease object
    auto scene = Scene::create();
    
    // 'layer' is an autorelease object
    auto layer = HelloWorld::create();

    // add layer as a child to scene
    scene->addChild(layer);

    // return the scene
    return scene;
}

HelloWorld::~HelloWorld()
{
	// 課堂練習一
	_jumpAction->release();
}

// on "init" you need to initialize your instance
bool HelloWorld::init()
{
    /**  you can create scene with following comment code instead of using csb file.
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }
    


    /////////////////////////////
    // 2. add a menu item with "X" image, which is clicked to quit the program
    //    you may modify it.

    // add a "close" icon to exit the progress. it's an autorelease object
    auto closeItem = MenuItemImage::create(
                                           "CloseNormal.png",
                                           "CloseSelected.png",
                                           CC_CALLBACK_1(HelloWorld::menuCloseCallback, this));
    
	closeItem->setPosition(Vec2(origin.x + visibleSize.width - closeItem->getContentSize().width/2 ,
                                origin.y + closeItem->getContentSize().height/2));

    // create menu, it's an autorelease object
    auto menu = Menu::create(closeItem, NULL);
    menu->setPosition(Vec2::ZERO);
    this->addChild(menu, 1);

    /////////////////////////////
    // 3. add your codes below...

    // add a label shows "Hello World"
    // create and initialize a label
    
    auto label = Label::createWithTTF("Hello World", "fonts/Marker Felt.ttf", 24);
    
    // position the label on the center of the screen
    label->setPosition(Vec2(origin.x + visibleSize.width/2,
                            origin.y + visibleSize.height - label->getContentSize().height));

    // add the label as a child to this layer
    this->addChild(label, 1);

    // add "HelloWorld" splash screen"
    auto sprite = Sprite::create("HelloWorld.png");

    // position the sprite on the center of the screen
    sprite->setPosition(Vec2(visibleSize.width/2 + origin.x, visibleSize.height/2 + origin.y));

    // add the sprite as a child to this layer
    this->addChild(sprite, 0);
    **/
    
	Size visibleSize = Director::getInstance()->getVisibleSize();
	Vec2 origin = Director::getInstance()->getVisibleOrigin();

    //////////////////////////////
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }
    
    auto rootNode = CSLoader::createNode("MainScene.csb");
    addChild(rootNode);


// 音效與音樂 --------------------------------------------------------------------------------
//	auto bkmusic = (cocostudio::ComAudio *)rootNode->getChildByName("bkmusic")->getComponent("bkmusic");
//	bkmusic->playBackgroundMusic();
//	SimpleAudioEngine::getInstance()->playBackgroundMusic("./music/SR_bg.mp3", true);
//	SimpleAudioEngine::getInstance()->preloadEffect("thinking cloud.mp3");
//	SimpleAudioEngine::getInstance()->setBackgroundMusicVolume(0.2f);
//	SimpleAudioEngine::getInstance()->stopBackgroundMusic();
//	unsigned int eid = SimpleAudioEngine::getInstance()->playEffect("thinking cloud.mp3");
//	SimpleAudioEngine::getInstance()->stopEffect(eid);
//	SimpleAudioEngine::getInstance()->unloadEffect("thinking cloud.mp3");
//---------------------------------------------------------------------------------------------

// Sprite ------------------------------------------------------------------------------------- 
	_runner = (cocos2d::Sprite *)rootNode->getChildByName("cuber01");
	_runner->setColor(Color3B(75,155,77));
	Point pt = _runner->getPosition();
	_jumpAction = cocos2d::JumpTo::create(1.25f, Point(pt.x - 600, pt.y), 100, 3);
	_jumpAction->retain();//保留不自動釋放，記得要在解構元release
	/*_runner->runAction(_jumpAction);*/
//---------------------------------------------------------------------------------------------		

// Button -------------------------------------------------------------------------------------
	Button *cuberbtn = dynamic_cast<Button*>(rootNode->getChildByName("CuberBtn"));
//	Button *cuberbtn = (cocos2d::ui::Button *)(rootNode->getChildByName("CuberBtn"));
	cuberbtn->addTouchEventListener(CC_CALLBACK_2(HelloWorld::CuberBtnTouchEvent, this));
//---------------------------------------------------------------------------------------------	

// 文本 TTF 字型-------------------------------------------------------------------------------
	//auto text = (cocos2d::ui::Text *)rootNode->getChildByName("Text101");
	//text->setColor(Color3B(200, 255, 50));
	//以下用於 slider 顯示用
	_sliderValue = (cocos2d::ui::Text *)rootNode->getChildByName("Text101");
//---------------------------------------------------------------------------------------------	

// FNT 字體-------------------------------------------------------------------------------
	//auto bmtlabel = (cocos2d::Label *)rootNode->getChildByName("BMFont");
	//bmtlabel->setColor(Color3B(200, 255, 50));
//---------------------------------------------------------------------------------------------	

// CheckBox-------------------------------------------------------------------------------
	CheckBox *checkBox = static_cast<CheckBox*>(rootNode->getChildByName("CheckBox_1"));
	checkBox->addEventListener(CC_CALLBACK_2(HelloWorld::checkBoxTouchEvent, this));
//---------------------------------------------------------------------------------------------	

// loadingBar-------------------------------------------------------------------------------
	auto loadingBar = (cocos2d::ui::LoadingBar *)rootNode->getChildByName("LoadingBar_1");
	loadingBar->setDirection(LoadingBar::Direction::LEFT);
	loadingBar->setPercent(50);
//---------------------------------------------------------------------------------------------	

// Slider 滑動條 -------------------------------------------------------------------------------------
	auto *slider = (cocos2d::ui::Slider *)(rootNode->getChildByName("Slider_1"));
	slider->addEventListener(CC_CALLBACK_2(HelloWorld::sliderEvent, this));
	slider->setPercent(50);
	slider->setMaxPercent(100);		// 可以設定超過 100
//---------------------------------------------------------------------------------------------	

// 序列幀動畫 -------------------------------------------------------------------------------------
	auto action = (ActionTimeline *)CSLoader::createTimeline("MainScene.csb");
	rootNode->runAction(action);
	action->gotoFrameAndPlay(0, 21, true);
//---------------------------------------------------------------------------------------------	

	//auto triblock = (cocos2d::Node*)rootNode->getChildByName("triRoot");
	//auto triaction = (ActionTimeline *)CSLoader::createTimeline("triblock");
	//triblock->runAction(triaction);
	//auto trinode = CSLoader::createNode("triangleNode.csb");
	//auto triblock = (cocos2d::Node*)trinode->getChildByName("triRoot");
	//triblock->setPosition(500, 500);
	//auto triaction = (ActionTimeline *)CSLoader::createTimeline("triangleNode.csb");
	//triaction->gotoFrameAndPause(0);
	//this->addChild(triblock);

	this->schedule(CC_SCHEDULE_SELECTOR(HelloWorld::doStep));


	SpriteFrameCache::getInstance()->addSpriteFramesWithFile("scene101.plist");
	auto cache = SpriteFrameCache::getInstance();
	// 利用 STL 的 vector 來儲存連續的 SpriteFrame
	Vector<SpriteFrame*> animFrames(8);
	char tmp[50];
	for (int j = 1; j <= 8; j++)
	{
		sprintf(tmp, "cuber%02d.png", j); // 產生 cuber01.png ~  cuber08.png
										  //從 plist 中取得圖檔名稱並建立 spriteFrame
		auto frame = cache->getSpriteFrameByName(tmp);
		animFrames.pushBack(frame);
	}

	auto animation = Animation::createWithSpriteFrames(animFrames, 0.05f);

	auto runner1 = Sprite::createWithSpriteFrameName("cuber01.png");
	runner1->setPosition(visibleSize.width / 2.0f, visibleSize.height / 2.0f);

	runner1->runAction(RepeatForever::create(Animate::create(animation)));// 
	this->addChild(runner1);//將物件放入場景

    return true;
}

void HelloWorld::doStep(float dt)
{

}



void HelloWorld::CuberBtnTouchEvent(Ref *pSender, Widget::TouchEventType type)
{
	switch (type)
	{
		case Widget::TouchEventType::BEGAN:
			log("Touch Down");
			break;
		case Widget::TouchEventType::MOVED:
			log("Touch Move");
			break;
		case Widget::TouchEventType::ENDED:
			log("Touch Up");
			_runner->runAction(_jumpAction);
			break;
		case Widget::TouchEventType::CANCELED:
			log("Touch Cancelled");
			break;
		default:
			break;
	}
}

void HelloWorld::checkBoxTouchEvent(Ref* object, CheckBox::EventType type) {
	switch (type)
	{
	case CheckBox::EventType::UNSELECTED:
		log("Unselected");
		break;

	case CheckBox::EventType::SELECTED:
		log("Selected");
		break;

	}
//	return(true);
}


void HelloWorld::sliderEvent(cocos2d::Ref* sender, cocos2d::ui::Slider::EventType type)
{
	if (type == Slider::EventType::ON_PERCENTAGE_CHANGED)
	{
		Slider* slider = dynamic_cast<Slider*>(sender);
		int percent = slider->getPercent();
		int maxPercent = slider->getMaxPercent();
		_sliderValue->setString(StringUtils::format("Percent %5.2f", 100.0 * percent / maxPercent));
	}
}
