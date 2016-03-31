<GameFile>
  <PropertyGroup Name="MainScene" Type="Scene" ID="a2ee0952-26b5-49ae-8bf9-4f1d6279b798" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="20" Speed="1.0000">
        <Timeline ActionTag="1889246330" Property="FileData">
          <TextureFrame FrameIndex="0" Tween="False">
            <TextureFile Type="PlistSubImage" Path="s101line01.png" Plist="scene101bg.plist" />
          </TextureFrame>
          <TextureFrame FrameIndex="10" Tween="False">
            <TextureFile Type="PlistSubImage" Path="s101line02.png" Plist="scene101bg.plist" />
          </TextureFrame>
          <TextureFrame FrameIndex="20" Tween="False">
            <TextureFile Type="PlistSubImage" Path="s101line01.png" Plist="scene101bg.plist" />
          </TextureFrame>
        </Timeline>
      </Animation>
      <ObjectData Name="Scene" ctype="GameNodeObjectData">
        <Size X="1280.0000" Y="720.0000" />
        <Children>
          <AbstractNodeData Name="s101bgimg_1" ActionTag="-1626891354" Tag="3" IconVisible="False" ctype="SpriteObjectData">
            <Size X="1280.0000" Y="720.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="640.0000" Y="360.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.0000" Y="1.0000" />
            <FileData Type="PlistSubImage" Path="s101bgimg.png" Plist="scene101bg.plist" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="Sprite_2" ActionTag="1889246330" Tag="14" IconVisible="False" TopMargin="217.0000" BottomMargin="217.0000" ctype="SpriteObjectData">
            <Size X="1280.0000" Y="286.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="640.0000" Y="360.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.0000" Y="0.3972" />
            <FileData Type="PlistSubImage" Path="s101line02.png" Plist="scene101bg.plist" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="cuber01" ActionTag="1256271304" Tag="6" IconVisible="False" LeftMargin="908.9940" RightMargin="130.0060" TopMargin="297.7676" BottomMargin="212.2324" ctype="SpriteObjectData">
            <Size X="241.0000" Y="210.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="1029.4940" Y="317.2324" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.8043" Y="0.4406" />
            <PreSize X="0.1883" Y="0.2917" />
            <FileData Type="PlistSubImage" Path="cuber01.png" Plist="scene101.plist" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="CuberBtn" ActionTag="-1761917606" Tag="7" IconVisible="False" LeftMargin="1136.0122" RightMargin="47.9878" TopMargin="43.7258" BottomMargin="589.2742" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="66" Scale9Height="65" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
            <Size X="96.0000" Y="87.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="1184.0122" Y="632.7742" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.9250" Y="0.8789" />
            <PreSize X="0.0750" Y="0.1208" />
            <TextColor A="255" R="65" G="65" B="70" />
            <DisabledFileData Type="PlistSubImage" Path="cuberbtn3.png" Plist="scene101bg.plist" />
            <PressedFileData Type="PlistSubImage" Path="cuberbtn2.png" Plist="scene101bg.plist" />
            <NormalFileData Type="PlistSubImage" Path="cuberbtn1.png" Plist="scene101bg.plist" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
          <AbstractNodeData Name="Text101" ActionTag="-501428857" Tag="8" IconVisible="False" LeftMargin="581.2584" RightMargin="579.7416" TopMargin="31.4427" BottomMargin="648.5573" FontSize="36" LabelText="Scene101" OutlineEnabled="True" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ShadowEnabled="True" ctype="TextObjectData">
            <Size X="119.0000" Y="40.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="640.7584" Y="668.5573" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="0" G="128" B="0" />
            <PrePosition X="0.5006" Y="0.9286" />
            <PreSize X="0.0930" Y="0.0556" />
            <FontResource Type="Normal" Path="Marker Felt.ttf" Plist="" />
            <OutlineColor A="255" R="77" G="77" B="77" />
            <ShadowColor A="255" R="25" G="80" B="25" />
          </AbstractNodeData>
          <AbstractNodeData Name="CheckBox_1" ActionTag="1670590924" Tag="10" IconVisible="False" LeftMargin="50.6015" RightMargin="1197.3984" TopMargin="40.3215" BottomMargin="647.6785" TouchEnable="True" CheckedState="True" ctype="CheckBoxObjectData">
            <Size X="32.0000" Y="32.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="66.6015" Y="663.6785" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.0520" Y="0.9218" />
            <PreSize X="0.0250" Y="0.0444" />
            <NormalBackFileData Type="PlistSubImage" Path="checkbox.png" Plist="scene101.plist" />
            <PressedBackFileData Type="PlistSubImage" Path="checkboxon.png" Plist="scene101.plist" />
            <DisableBackFileData Type="Default" Path="Default/CheckBox_Disable.png" Plist="" />
            <NodeNormalFileData Type="PlistSubImage" Path="checkon.png" Plist="scene101.plist" />
            <NodeDisableFileData Type="PlistSubImage" Path="checkoff.png" Plist="scene101.plist" />
          </AbstractNodeData>
          <AbstractNodeData Name="LoadingBar_1" ActionTag="-801050513" Tag="12" IconVisible="False" LeftMargin="125.2158" RightMargin="1024.7842" TopMargin="47.8218" BottomMargin="655.1782" ctype="LoadingBarObjectData">
            <Size X="130.0000" Y="17.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="190.2158" Y="663.6782" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.1486" Y="0.9218" />
            <PreSize X="0.1016" Y="0.0236" />
            <ImageFileData Type="PlistSubImage" Path="loadingbar.png" Plist="scene101.plist" />
          </AbstractNodeData>
          <AbstractNodeData Name="Slider_1" ActionTag="1837623956" Tag="13" IconVisible="False" LeftMargin="519.0116" RightMargin="510.9884" TopMargin="123.0145" BottomMargin="583.9855" TouchEnable="True" PercentInfo="50" ctype="SliderObjectData">
            <Size X="250.0000" Y="13.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="644.0116" Y="590.4855" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5031" Y="0.8201" />
            <PreSize X="0.1953" Y="0.0181" />
            <BackGroundData Type="PlistSubImage" Path="sliderTrack.png" Plist="scene101.plist" />
            <ProgressBarData Type="PlistSubImage" Path="sliderProgress.png" Plist="scene101.plist" />
            <BallNormalData Type="PlistSubImage" Path="sliderballnormal.png" Plist="scene101.plist" />
            <BallPressedData Type="PlistSubImage" Path="sliderballpressed.png" Plist="scene101.plist" />
            <BallDisabledData Type="Default" Path="Default/SliderNode_Disable.png" Plist="" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>