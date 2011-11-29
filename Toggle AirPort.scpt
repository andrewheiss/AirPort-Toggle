FasdUAS 1.101.10   ��   ��    k             l     ��  ��           � 	 	      
  
 l     ��  ��      Toggle AirPort.scpt     �   (   T o g g l e   A i r P o r t . s c p t      l     ��  ��           �           l     ��  ��    8 2 Author: Andrew Heiss - http://www.andrewheiss.com     �   d   A u t h o r :   A n d r e w   H e i s s   -   h t t p : / / w w w . a n d r e w h e i s s . c o m      l     ��  ��    A ; Project site: http://github.com/andrewheiss/AirPort-Toggle     �   v   P r o j e c t   s i t e :   h t t p : / / g i t h u b . c o m / a n d r e w h e i s s / A i r P o r t - T o g g l e      l     ��   !��     O I Description: Toggle AirPort.scpt is a simple AppleScript file that will     ! � " " �   D e s c r i p t i o n :   T o g g l e   A i r P o r t . s c p t   i s   a   s i m p l e   A p p l e S c r i p t   f i l e   t h a t   w i l l     # $ # l     �� % &��   % D >              either enable or disable your AirPort connection    & � ' ' |                             e i t h e r   e n a b l e   o r   d i s a b l e   y o u r   A i r P o r t   c o n n e c t i o n $  ( ) ( l     �� * +��   * P J License: Licensed under the MIT License (see README for full information)    + � , , �   L i c e n s e :   L i c e n s e d   u n d e r   t h e   M I T   L i c e n s e   ( s e e   R E A D M E   f o r   f u l l   i n f o r m a t i o n ) )  - . - l     �� / 0��   /   Date: July 25, 2011     0 � 1 1 *   D a t e :   J u l y   2 5 ,   2 0 1 1   .  2 3 2 l     �� 4 5��   4 . ( Version: 2.1 (OS X 10.7 with Growl 1.3)    5 � 6 6 P   V e r s i o n :   2 . 1   ( O S   X   1 0 . 7   w i t h   G r o w l   1 . 3 ) 3  7 8 7 l     ��������  ��  ��   8  9 : 9 l     �� ; <��   ; / )Figure out if the AirPort is on or off...    < � = = R F i g u r e   o u t   i f   t h e   A i r P o r t   i s   o n   o r   o f f . . . :  > ? > l     @���� @ r      A B A I    �� C��
�� .sysoexecTEXT���     TEXT C m      D D � E E V / u s r / s b i n / n e t w o r k s e t u p   - g e t a i r p o r t p o w e r   e n 1��   B o      ���� 0 airport_status  ��  ��   ?  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J - 'If it's on, turn it off, and vice versa    K � L L N I f   i t ' s   o n ,   t u r n   i t   o f f ,   a n d   v i c e   v e r s a I  M N M l   # O���� O Z    # P Q�� R P =    S T S o    	���� 0 airport_status   T m   	 
 U U � V V * W i - F i   P o w e r   ( e n 1 ) :   O n Q k     W W  X Y X I   �� Z��
�� .sysoexecTEXT���     TEXT Z m     [ [ � \ \ ^ / u s r / s b i n / n e t w o r k s e t u p   - s e t a i r p o r t p o w e r   e n 1   o f f��   Y  ]�� ] r     ^ _ ^ m     ` ` � a a $ A i r P o r t   t u r n e d   o f f _ o      ���� 
0 status  ��  ��   R k    # b b  c d c I   �� e��
�� .sysoexecTEXT���     TEXT e m     f f � g g \ / u s r / s b i n / n e t w o r k s e t u p   - s e t a i r p o r t p o w e r   e n 1   o n��   d  h i h l     �� j k��   j 9 3In case you need to use administrator priveleges...    k � l l f I n   c a s e   y o u   n e e d   t o   u s e   a d m i n i s t r a t o r   p r i v e l e g e s . . . i  m n m l     �� o p��   o a [do shell script "" user name "admin name" password "password" with administrator privileges    p � q q � d o   s h e l l   s c r i p t   " "   u s e r   n a m e   " a d m i n   n a m e "   p a s s w o r d   " p a s s w o r d "   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s n  r�� r r     # s t s m     ! u u � v v " A i r P o r t   t u r n e d   o n t o      ���� 
0 status  ��  ��  ��   N  w x w l     ��������  ��  ��   x  y z y l     �� { |��   { 1 +Growl magic, if Growl 1.3.1 is installed...    | � } } V G r o w l   m a g i c ,   i f   G r o w l   1 . 3 . 1   i s   i n s t a l l e d . . . z  ~�� ~ l  $ � ����  O   $ � � � � Z   ( � � ����� � ?   ( : � � � l  ( 8 ����� � I  ( 8�� ���
�� .corecnte****       **** � l  ( 4 ����� � 6  ( 4 � � � 2   ( +��
�� 
prcs � =  , 3 � � � 1   - /��
�� 
pnam � m   0 2 � � � � � 
 G r o w l��  ��  ��  ��  ��   � m   8 9����   � O   = � � � � k   A � � �  � � � r   A J � � � J   A F � �  ��� � m   A D � � � � �  A i r P o r t   T o g g l e��   � l      ����� � o      ���� ,0 allnotificationslist allNotificationsList��  ��   �  � � � l  K K��������  ��  ��   �  � � � r   K T � � � J   K P � �  ��� � m   K N � � � � �  A i r P o r t   T o g g l e��   � l      ����� � o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   �  � � � l  U U��������  ��  ��   �  � � � I  U t���� �
�� .registernull��� ��� null��   � �� � �
�� 
appl � m   Y \ � � � � �  A i r P o r t   T o g g l e � �� � �
�� 
anot � o   _ b���� ,0 allnotificationslist allNotificationsList � �� � �
�� 
dnot � o   e h���� 40 enablednotificationslist enabledNotificationsList � �� ���
�� 
iapp � m   k n � � � � �  A i r P o r t   U t i l i t y��   �  � � � l  u u��������  ��  ��   �  ��� � I  u ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � m   y | � � � � �  A i r P o r t   T o g g l e � �� � �
�� 
titl � m    � � � � � �  A i r P o r t   T o g g l e � �� � �
�� 
desc � o   � ����� 
0 status   � �� ���
�� 
appl � m   � � � � � � �  A i r P o r t   T o g g l e��  ��   � m   = > � ��                                                                                  GRRR  alis    H  Macintosh HD               �g�
H+  -	Growl.app                                                       ���?�        ����  	                Applications    �hj      �ה_    -  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  ��  ��   � m   $ % � ��                                                                                  sevs  alis    �  Macintosh HD               �g�
H+  -�System Events.app                                              ."���        ����  	                CoreServices    �hj      � PB    -�-�-�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  > � �  M � �  ~����  ��  ��   �   � # D���� U [ `�� f u ��� ��� ��� � ��� ����� ������� ������� ��� ��� ���
�� .sysoexecTEXT���     TEXT�� 0 airport_status  �� 
0 status  
�� 
prcs �  
�� 
pnam
�� .corecnte****       ****�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null�� ��j E�O��  �j O�E�Y �j O�E�O� q*�-�[�,\Z�81j j [� Sa kvE` Oa kvE` O*a a a _ a _ a a a  O*a a a a a  �a a !a  "UY hUascr  ��ޭ