'This BMX file was edited with BLIde ( http://www.blide.org )
Rem
	bbdoc:Undocumented type
End Rem
Type TActor
     Field m_Actor:TImage
	 Field m_Sizex:Float, m_Sizey:Float
	 Field m_Alpha:Int, m_Blend:Int
	 Field m_Posx:Int, m_Posy:Int
	 Field m_Frame:Int, m_Flag:String
     Field m_Score:Int
     Field m_xv:Int
     Field m_yv:Int
	 
	 Method Actor()
			DrawImage m_Actor, m_Posx, m_Posy
			SetAlpha m_Alpha
			SetBlend m_Blend			
	 End Method
	 
	 Function Create:TActor()
	        Return New TActor
	 EndFunction
End Type
