'This BMX file was edited with BLIde ( http://www.blide.org )
Graphics 800, 600,, 60
SeedRnd(MilliSecs())
AutoMidHandle True
AutoImageFlags True

Const PLAYER_SPEED:Int = 7
Const COMPUTER_SPEED:Int = 6
Const XRANDOM_FACTOR:Int = 2
Const YRANDOM_FACTOR:Int = 1
Const START_XV_MIN:Int = 3
Const START_XV_MAX:Int = 6
Const START_YV_MIN:Int = -8
Const START_YV_MAX:Int = 8

' Create Player Using TActor
Global Player:TActor = New TActor.Create()
Player.m_Actor = LoadImage ("Media/player1.bmp")
Player.m_Posx = 10
Player.m_Posy = 250
Player.m_Alpha = 1
Player.m_Blend = 1
Player.m_Score = 0

' Create AI Using TActor
Global AI:TActor = New TActor.Create()
AI.m_Actor = LoadImage ("Media/player2.bmp")
AI.m_Posx = 770
AI.m_Posy = 250
AI.m_Alpha = 1
AI.m_Blend = 1
AI.m_Score = 0

' Create Ball Using TActor
Global Ball:TActor = New TActor.Create()
Ball.m_Actor = LoadImage ("Media/ball.bmp")
Ball.m_Posx = 400
Ball.m_Posy = 300
Ball.m_Alpha = 1
Ball.m_Blend = 1

' Initial Ball Movement
Ball.m_xv = Rand(START_XV_MIN, START_XV_MAX)
Ball.m_yv = Rand(START_YV_MIN, START_YV_MAX)

Repeat
	  Cls
		DrawText "Player 1: " + Player.m_Score, 0, 0
		DrawText "Player 2: " + AI.m_Score, 0, 20
		BallPhysics()
		Player.Actor()
		AI.Actor()
		Ball.Actor()		
	    UserInput()
	    AIMovement()
        Flip
Until KeyDown(KEY_ESCAPE)
EndGraphics

End

Function UserInput()
         If KeyDown(KEY_D) = 1 Then DebugStop
		 If KeyDown(KEY_UP)
		 	 Player.m_Posy = Player.m_Posy - PLAYER_SPEED
		 End If
		 If KeyDown(KEY_DOWN)
		 	 Player.m_Posy = Player.m_Posy + PLAYER_SPEED
		 End If
EndFunction

Function AIMovement()
	    If Ball.m_Posy > AI.m_Posy
		 	 AI.m_Posy = AI.m_Posy + COMPUTER_SPEED
		ElseIf Ball.m_Posy < AI.m_Posy
		     AI.m_Posy = AI.m_Posy - COMPUTER_SPEED
		End If
End Function

Function BallPhysics()
	    If ImagesCollide(Ball.m_Actor, Ball.m_Posx, Ball.m_Posy, 0, Player.m_Actor, 20, Player.m_Posy, 0)
		     Ball.m_xv = -Ball.m_xv + Rand(-XRANDOM_FACTOR, XRANDOM_FACTOR)
			 Ball.m_yv = Ball.m_yv + Rand(-YRANDOM_FACTOR, YRANDOM_FACTOR)
		ElseIf ImagesCollide(Ball.m_Actor, Ball.m_Posx, Ball.m_Posy, 0, AI.m_Actor, 760, AI.m_Posy, 0)
		     Ball.m_xv = -Ball.m_xv + Rand(-XRANDOM_FACTOR, XRANDOM_FACTOR)
			 Ball.m_yv = Ball.m_yv + Rand(-YRANDOM_FACTOR, YRANDOM_FACTOR)
		ElseIf Ball.m_Posy <= 0
		     Ball.m_xv = Ball.m_xv + Rand(-XRANDOM_FACTOR, XRANDOM_FACTOR)
			 Ball.m_yv = -Ball.m_yv + Rand(-YRANDOM_FACTOR, YRANDOM_FACTOR)
		ElseIf Ball.m_Posy >= 600
		     Ball.m_xv = Ball.m_xv + Rand(-XRANDOM_FACTOR, XRANDOM_FACTOR)
			 Ball.m_yv = -Ball.m_yv + Rand(-YRANDOM_FACTOR, YRANDOM_FACTOR)
		ElseIf Ball.m_Posx <= 0
		     AI.m_Score = AI.m_Score + 1
			 Cls
			 Ball.m_Posx = 400
			 Ball.m_Posy = 300
		ElseIf Ball.m_Posx >= 800
		     Player.m_Score = Player.m_Score + 1
			 Cls
			 Ball.m_Posx = 400
			 Ball.m_Posy = 300
		End If
		Ball.m_Posx = Ball.m_Posx + Ball.m_xv
		Ball.m_Posy = Ball.m_Posy + Ball.m_yv
End Function