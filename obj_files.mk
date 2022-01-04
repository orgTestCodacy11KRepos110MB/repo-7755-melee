# Linker order for every file, passed to the Metrowerks linker.

INIT_O_FILES := 						            \
	$(BUILD_DIR)/src/Runtime/__mem.o	            \
	$(BUILD_DIR)/asm/init.o				            \
    $(BUILD_DIR)/src/dolphin/os/init/__start.o

EXTAB_O_FILES :=                                    \
    $(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=                               \
    $(BUILD_DIR)/asm/extabindex.o

TEXT_O_FILES := 						            \
	$(BUILD_DIR)/src/melee/lb/lbcommand.o			\
	$(BUILD_DIR)/asm/melee/lb/lbcollision.o  	    \
	$(BUILD_DIR)/src/melee/lb/lblanguage.o  	    \
	$(BUILD_DIR)/src/melee/lb/lbtime.o  	        \
	$(BUILD_DIR)/asm/melee/lb/code_8000B074.o  	    \
	$(BUILD_DIR)/asm/melee/lb/code_8000CE50.o  	    \
	$(BUILD_DIR)/src/melee/lb/lbvector.o		 	\
	$(BUILD_DIR)/asm/melee/lb/lbshadow.o		 	\
	$(BUILD_DIR)/asm/melee/lb/code_8000F9F8.o 		\
	$(BUILD_DIR)/asm/melee/lb/lbheap.o 				\
	$(BUILD_DIR)/src/melee/lb/lbfile.o 				\
	$(BUILD_DIR)/asm/melee/lb/lbfile.o 				\
	$(BUILD_DIR)/src/melee/lb/lbarchive.o			\
	$(BUILD_DIR)/asm/melee/lb/lbarchive.o			\
	$(BUILD_DIR)/asm/melee/lb/lbdvd.o				\
	$(BUILD_DIR)/asm/melee/lb/code_80019230.o		\
	$(BUILD_DIR)/asm/melee/lb/lbsnap.o				\
	$(BUILD_DIR)/asm/melee/lb/code_8001E2F8.o		\
	                                                \
	$(BUILD_DIR)/asm/melee/cm/camera.o 				\
	$(BUILD_DIR)/asm/melee/cm/cmsnap.o 				\
													\
	$(BUILD_DIR)/src/melee/pl/player.o 		 	    \
	$(BUILD_DIR)/asm/melee/pl/player.o 		 	    \
	$(BUILD_DIR)/asm/melee/pl/code_8003715C.o 		\
													\
	$(BUILD_DIR)/asm/melee/mp/mpcoll.o 				\
	$(BUILD_DIR)/asm/melee/mp/mplib.o 				\
	$(BUILD_DIR)/asm/melee/mp/mpisland.o 			\
													\
	$(BUILD_DIR)/asm/melee/ef/eflib.o				\
	$(BUILD_DIR)/asm/melee/ef/efsync.o				\
	$(BUILD_DIR)/asm/melee/ef/code_80061D70.o		\
	$(BUILD_DIR)/asm/melee/ef/efasync.o				\
													\
	$(BUILD_DIR)/asm/melee/ft/fighter.o 			\
	$(BUILD_DIR)/asm/melee/ft/ftanim.o 				\
	$(BUILD_DIR)/asm/melee/ft/ftaction.o 			\
	$(BUILD_DIR)/asm/melee/ft/ftparts.o 			\
	$(BUILD_DIR)/asm/melee/ft/ftcamera.o 			\
	$(BUILD_DIR)/asm/melee/ft/ftcoll.o 				\
	$(BUILD_DIR)/asm/melee/ft/code_8007C114.o 		\
	$(BUILD_DIR)/asm/melee/ft/code_8007C630.o 		\
	$(BUILD_DIR)/asm/melee/ft/ftcommon.o 			\
	$(BUILD_DIR)/asm/melee/ft/ftdrawcommon.o 		\
	$(BUILD_DIR)/asm/melee/ft/ftcliffcommon.o 		\
	$(BUILD_DIR)/asm/melee/ft/ftwalljump.o 			\
	$(BUILD_DIR)/asm/melee/ft/code_80081938.o 		\
	$(BUILD_DIR)/asm/melee/ft/code_80081B38.o 		\
	$(BUILD_DIR)/asm/melee/ft/code_8008521C.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftdonkey_1.o 	\
	$(BUILD_DIR)/asm/melee/ft/chara/ftmario.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftfalcon.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftfox.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftlink.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftkirby.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftdonkey_2.o 	\
	$(BUILD_DIR)/asm/melee/ft/chara/ftseak.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftness.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftpeach.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/fticeclimber.o 	\
	$(BUILD_DIR)/asm/melee/ft/chara/ftpikachu.o 	\
	$(BUILD_DIR)/asm/melee/ft/chara/ftsamus.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftyoshi.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftkoopa.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftmars.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftzelda.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftpurin.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftluigi.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftmewtwo.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftclink.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftdrmario.o 	\
	$(BUILD_DIR)/asm/melee/ft/chara/ftfalco.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftpichu.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftgamewatch.o 	\
	$(BUILD_DIR)/asm/melee/ft/chara/ftganon.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftemblem.o 		\
	$(BUILD_DIR)/asm/melee/ft/chara/ftzakoboy.o 	\
	$(BUILD_DIR)/asm/melee/ft/chara/ftzakogirl.o 	\
	$(BUILD_DIR)/asm/melee/ft/chara/ftgigakoopa.o 	\
	$(BUILD_DIR)/asm/melee/ft/chara/ftsandbag.o 	\
	$(BUILD_DIR)/asm/melee/ft/chara/ftmasterhand.o 	\
	$(BUILD_DIR)/asm/melee/ft/chara/ftcrazyhand.o 	\
	$(BUILD_DIR)/asm/melee/ft/ftbosslib.o 		            \
															\
	$(BUILD_DIR)/asm/melee/gm/gmmain.o 		 	            \
	$(BUILD_DIR)/asm/melee/gm/code_801601C4.o 		 	    \
	$(BUILD_DIR)/asm/melee/gm/gmtitle.o 		 			\
	$(BUILD_DIR)/asm/melee/gm/gmcamera.o 		 			\
															\
	$(BUILD_DIR)/asm/melee/text_2.o 		 	            \
															\
	$(BUILD_DIR)/asm/melee/gr/grfzerocar.o 					\
	$(BUILD_DIR)/asm/melee/gr/grizumi.o 		 			\
	$(BUILD_DIR)/asm/melee/gr/grcastle.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grstadium.o 	 	            \
	$(BUILD_DIR)/asm/melee/gr/grkongo.o 		 			\
	$(BUILD_DIR)/asm/melee/gr/grzebes.o 		 			\
	$(BUILD_DIR)/asm/melee/gr/grcorneria.o 	 	            \
	$(BUILD_DIR)/asm/melee/gr/grstory.o 		 			\
	$(BUILD_DIR)/asm/melee/gr/gronett.o 		 			\
	$(BUILD_DIR)/asm/melee/gr/grbigblue.o 	 	            \
	$(BUILD_DIR)/asm/melee/gr/grmutecity.o 	 	            \
	$(BUILD_DIR)/asm/melee/gr/grfourside.o 	 	            \
	$(BUILD_DIR)/asm/melee/gr/grgreatbay.o 	 	            \
	$(BUILD_DIR)/asm/melee/gr/gricemt.o 		 			\
	$(BUILD_DIR)/asm/melee/gr/grinishie1.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grinishie2.o 	 	            \
	$(BUILD_DIR)/asm/melee/gr/grkraid.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grrcruise.o 	 	            \
	$(BUILD_DIR)/asm/melee/gr/grshrine.o 		            \
	$(BUILD_DIR)/asm/melee/gr/gryorster.o 	 	            \
	$(BUILD_DIR)/asm/melee/gr/grgarden.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grvenom.o 		 			\
	$(BUILD_DIR)/asm/melee/gr/grtest.o 		 	            \
	$(BUILD_DIR)/asm/melee/gr/grkinokoroute.o  	            \
	$(BUILD_DIR)/asm/melee/gr/grshrineroute.o  	            \
	$(BUILD_DIR)/asm/melee/gr/grzebesroute.o   	            \
	$(BUILD_DIR)/asm/melee/gr/grbigblueroute.o 	            \
	$(BUILD_DIR)/asm/melee/gr/grfigure1.o 	 	            \
	$(BUILD_DIR)/asm/melee/gr/grfigure2.o 	 	            \
	$(BUILD_DIR)/asm/melee/gr/grfigure3.o		            \
	$(BUILD_DIR)/asm/melee/gr/groldyoshi.o 		            \
	$(BUILD_DIR)/asm/melee/gr/groldkongo.o 		            \
	$(BUILD_DIR)/asm/melee/gr/groldpupupu.o 				\
	$(BUILD_DIR)/asm/melee/gr/grpura.o 			            \
	$(BUILD_DIR)/asm/melee/gr/grgreens.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grflatzone.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grpushon.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grfigureget.o 				\
	$(BUILD_DIR)/asm/melee/gr/grbattle.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grlast.o 			            \
	$(BUILD_DIR)/asm/melee/gr/grhomerun.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grheal.o 			            \
	$(BUILD_DIR)/asm/melee/gr/grtmario.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtfalcon.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtclink.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtdonkey.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtdrmario.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtfalco.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtfox.o 			            \
	$(BUILD_DIR)/asm/melee/gr/grticeclimber.o 	            \
	$(BUILD_DIR)/asm/melee/gr/grtkirby.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtkoopa.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtlink.o 					\
	$(BUILD_DIR)/asm/melee/gr/grtluigi.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtmars.o 					\
	$(BUILD_DIR)/src/melee/gr/grtmars.o 					\
	$(BUILD_DIR)/asm/melee/gr/grtmewtwo.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtness.o 					\
	$(BUILD_DIR)/src/melee/gr/grtness.o 					\
	$(BUILD_DIR)/asm/melee/gr/grtpeach.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtpichu.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtpikachu.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtpurin.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtsamus.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtseak.o 					\
	$(BUILD_DIR)/asm/melee/gr/grtyoshi.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtzelda.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtgamewatch.o 	            \
	$(BUILD_DIR)/asm/melee/gr/grtemblem.o 		            \
	$(BUILD_DIR)/asm/melee/gr/grtganon.o 		            \
	$(BUILD_DIR)/src/melee/gr/stage.o 	            		\
	$(BUILD_DIR)/asm/melee/gr/stage.o 	            		\
															\
	$(BUILD_DIR)/asm/melee/db/code_80225374.o              	\
															\
	$(BUILD_DIR)/asm/melee/text_3.o                      	\
															\
	$(BUILD_DIR)/asm/melee/mn/mnitemsw.o                    \
	$(BUILD_DIR)/asm/melee/mn/mnstagesw.o                   \
	$(BUILD_DIR)/asm/melee/mn/mnname.o                   	\
	$(BUILD_DIR)/asm/melee/mn/code_8023B0F8.o               \
	$(BUILD_DIR)/asm/melee/mn/mndiagram.o               	\
	$(BUILD_DIR)/asm/melee/mn/mndiagram2.o               	\
	$(BUILD_DIR)/asm/melee/mn/mndiagram3.o               	\
	$(BUILD_DIR)/asm/melee/mn/mnvibration.o                 \
	$(BUILD_DIR)/asm/melee/mn/mnsound.o                 	\
	$(BUILD_DIR)/asm/melee/mn/mndeflicker.o               	\
	$(BUILD_DIR)/asm/melee/mn/mnsoundtest.o               	\
	$(BUILD_DIR)/asm/melee/mn/mnlanguage.o               	\
	$(BUILD_DIR)/asm/melee/mn/mnhyaku.o               		\
	$(BUILD_DIR)/asm/melee/mn/mnevent.o               		\
	$(BUILD_DIR)/asm/melee/mn/mndatadel.o               	\
	$(BUILD_DIR)/asm/melee/mn/mncount.o			            \
	$(BUILD_DIR)/asm/melee/mn/mninfo.o			            \
	$(BUILD_DIR)/asm/melee/mn/mninfobonus.o		            \
	$(BUILD_DIR)/asm/melee/mn/mnsnap.o			            \
	$(BUILD_DIR)/asm/melee/mn/mngallery.o	                \
	$(BUILD_DIR)/asm/melee/mn/mnstagesel.o               	\
	$(BUILD_DIR)/asm/melee/mn/mncharsel.o               	\
															\
	$(BUILD_DIR)/asm/melee/it/code_80266F3C.o              	\
	$(BUILD_DIR)/asm/melee/it/code_8027CF30.o              	\
															\
	$(BUILD_DIR)/asm/melee/if/ifall.o                      	\
	$(BUILD_DIR)/asm/melee/if/iftime.o                      \
	$(BUILD_DIR)/asm/melee/if/ifstatus.o                   	\
	$(BUILD_DIR)/asm/melee/if/code_802F7288.o               \
	$(BUILD_DIR)/asm/melee/if/ifstock.o                     \
	$(BUILD_DIR)/asm/melee/if/ifmagnify.o                   \
															\
	$(BUILD_DIR)/asm/melee/text_4.o                      	\
														\
	$(BUILD_DIR)/asm/Runtime/__va_arg.o             	\
	$(BUILD_DIR)/asm/Runtime/NMWException.o         	\
	$(BUILD_DIR)/src/Runtime/Gecko_setjmp.o         	\
	$(BUILD_DIR)/asm/Runtime/runtime.o              	\
	$(BUILD_DIR)/src/Runtime/__init_cpp_exceptions.o	\
													\
	$(BUILD_DIR)/asm/MSL/abort_exit.o               \
	$(BUILD_DIR)/asm/MSL/ansi_fp.o                  \
	$(BUILD_DIR)/asm/MSL/buffer_io.o                \
	$(BUILD_DIR)/src/MSL/PPC_EABI/critical_regions.gamecube.o 	\
	$(BUILD_DIR)/src/MSL/ctype.o                    \
	$(BUILD_DIR)/asm/MSL/direct_io.o                \
	$(BUILD_DIR)/src/MSL/cstring.o                  \
	$(BUILD_DIR)/asm/MSL/mem_funcs.o                \
	$(BUILD_DIR)/asm/MSL/printf.o                   \
	$(BUILD_DIR)/src/MSL/rand.o                     \
	$(BUILD_DIR)/asm/MSL/string.o                   \
	$(BUILD_DIR)/asm/MSL/strtoul.o                  \
	$(BUILD_DIR)/asm/MSL/console_io.o               \
	$(BUILD_DIR)/src/MSL/wchar_io.o                 \
	$(BUILD_DIR)/asm/MSL/math.o                     \
                                                    \
	$(BUILD_DIR)/asm/MetroTRK/mainloop.o            \
	$(BUILD_DIR)/asm/MetroTRK/nubevent.o            \
	$(BUILD_DIR)/asm/MetroTRK/nubinit.o             \
	$(BUILD_DIR)/asm/MetroTRK/msg.o                 \
	$(BUILD_DIR)/asm/MetroTRK/msgbuf.o              \
	$(BUILD_DIR)/asm/MetroTRK/serpoll.o             \
	$(BUILD_DIR)/asm/MetroTRK/dispatch.o            \
	$(BUILD_DIR)/asm/MetroTRK/msghndlr.o            \
	$(BUILD_DIR)/asm/MetroTRK/flush_cache.o         \
	$(BUILD_DIR)/asm/MetroTRK/mem_TRK.o             \
	$(BUILD_DIR)/asm/MetroTRK/targimpl.o            \
	$(BUILD_DIR)/asm/MetroTRK/dolphin_trk.o         \
	$(BUILD_DIR)/asm/MetroTRK/mpc_7xx_603e.o        \
	$(BUILD_DIR)/asm/MetroTRK/main_TRK.o            \
	$(BUILD_DIR)/asm/MetroTRK/dolphin_trk_glue.o    \
	$(BUILD_DIR)/asm/MetroTRK/targcont.o            \
													\
	$(BUILD_DIR)/src/dolphin/amcstubs/AmcExi2Stubs.o		\
	$(BUILD_DIR)/asm/dolphin/OdemuExi2/DebuggerDriver.o     \
	$(BUILD_DIR)/asm/dolphin/hio/hio.o              \
	$(BUILD_DIR)/asm/dolphin/mcc/mcc.o              \
	$(BUILD_DIR)/asm/dolphin/mcc/fio.o              \
	$(BUILD_DIR)/asm/dolphin/thp/THPDec.o           \
	$(BUILD_DIR)/asm/dolphin/jpeg/jpegdec.o         \
	$(BUILD_DIR)/src/dolphin/base/PPCArch.o	        \
	$(BUILD_DIR)/asm/dolphin/db/db.o                \
	$(BUILD_DIR)/src/dolphin/dsp/dsp.o              \
	$(BUILD_DIR)/asm/dolphin/dsp/dsp.o              \
	$(BUILD_DIR)/asm/dolphin/dsp/dsp_debug.o        \
	$(BUILD_DIR)/asm/dolphin/dsp/dsp_task.o         \
	$(BUILD_DIR)/asm/dolphin/dvd/dvdlow.o           \
	$(BUILD_DIR)/asm/dolphin/dvd/dvdfs.o            \
	$(BUILD_DIR)/asm/dolphin/dvd/dvd.o              \
	$(BUILD_DIR)/asm/dolphin/dvd/dvdqueue.o         \
	$(BUILD_DIR)/asm/dolphin/dvd/dvderror.o         \
	$(BUILD_DIR)/asm/dolphin/dvd/fstload.o          \
	$(BUILD_DIR)/asm/dolphin/gx/GXInit.o            \
	$(BUILD_DIR)/asm/dolphin/gx/GXFifo.o            \
	$(BUILD_DIR)/asm/dolphin/gx/GXAttr.o            \
	$(BUILD_DIR)/asm/dolphin/gx/GXMisc.o            \
	$(BUILD_DIR)/asm/dolphin/gx/GX.o                \
	$(BUILD_DIR)/asm/dolphin/mtx/mtx.o              \
	$(BUILD_DIR)/asm/dolphin/mtx/mtxvec.o           \
	$(BUILD_DIR)/asm/dolphin/mtx/mtx44.o            \
	$(BUILD_DIR)/asm/dolphin/mtx/vec.o              \
	$(BUILD_DIR)/asm/dolphin/os/OS.o                \
	$(BUILD_DIR)/asm/dolphin/os/OSAlarm.o           \
	$(BUILD_DIR)/asm/dolphin/os/OSAlloc.o           \
	$(BUILD_DIR)/asm/dolphin/os/OSArena.o           \
	$(BUILD_DIR)/asm/dolphin/os/OSAudioSystem.o     \
	$(BUILD_DIR)/asm/dolphin/os/OSCache.o           \
	$(BUILD_DIR)/asm/dolphin/os/OSContext.o         \
	$(BUILD_DIR)/asm/dolphin/os/OSError.o           \
	$(BUILD_DIR)/asm/dolphin/os/OSExi.o             \
	$(BUILD_DIR)/asm/dolphin/os/OSFont.o            \
	$(BUILD_DIR)/asm/dolphin/os/OSInterrupt.o       \
	$(BUILD_DIR)/src/dolphin/os/OSLink.o            \
	$(BUILD_DIR)/asm/dolphin/os/OSMemory.o          \
	$(BUILD_DIR)/asm/dolphin/os/OSMutex.o           \
	$(BUILD_DIR)/asm/dolphin/os/OSReboot.o          \
	$(BUILD_DIR)/asm/dolphin/os/OSReset.o           \
	$(BUILD_DIR)/asm/dolphin/os/OSResetSW.o         \
	$(BUILD_DIR)/asm/dolphin/os/OSRtc.o             \
	$(BUILD_DIR)/asm/dolphin/os/OSSerial.o          \
	$(BUILD_DIR)/asm/dolphin/os/OSSync.o            \
	$(BUILD_DIR)/asm/dolphin/os/OSThread.o          \
	$(BUILD_DIR)/asm/dolphin/os/OSTime.o            \
	$(BUILD_DIR)/asm/dolphin/os/OSUartExi.o         \
	$(BUILD_DIR)/asm/dolphin/os/init/__ppc_eabi_init.o      \
	$(BUILD_DIR)/src/dolphin/os/init/__ppc_eabi_init.o      \
	$(BUILD_DIR)/asm/dolphin/pad/Padclamp.o  		\
	$(BUILD_DIR)/asm/dolphin/pad/Pad.o              \
	$(BUILD_DIR)/asm/dolphin/vi/vi.o  				\
	$(BUILD_DIR)/asm/dolphin/ai/ai.o                \
	$(BUILD_DIR)/asm/dolphin/ar/ar.o                \
	$(BUILD_DIR)/asm/dolphin/ar/arq.o               \
	$(BUILD_DIR)/asm/dolphin/card/CARDBios.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDUnlock.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDRdrw.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDBlock.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDDir.o			\
	$(BUILD_DIR)/asm/dolphin/card/CARDCheck.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDMount.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDFormat.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDOpen.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDCreate.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDRead.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDWrite.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDDelete.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDStat.o		\
	$(BUILD_DIR)/asm/dolphin/card/CARDRename.o		\
                                                    \
	$(BUILD_DIR)/asm/dolphin/ax/AX.o 				\
	$(BUILD_DIR)/asm/dolphin/ax/AXAlloc.o 			\
                                                    \
	$(BUILD_DIR)/src/sysdolphin/baselib/dobj.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/dobj.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/tobj.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/tobj.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/state.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/tev.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/tev.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/mobj.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/aobj.o	    \
	$(BUILD_DIR)/asm/sysdolphin/baselib/aobj.o	    \
	$(BUILD_DIR)/src/sysdolphin/baselib/lobj.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/lobj.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/cobj.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/cobj.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/fobj.o      \
	$(BUILD_DIR)/asm/sysdolphin/baselib/fobj.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/pobj.o      \
	$(BUILD_DIR)/asm/sysdolphin/baselib/pobj.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/jobj.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/displayfunc.o       \
	$(BUILD_DIR)/asm/sysdolphin/baselib/displayfunc.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/initialize.o 		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/initialize.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/video.o				\
	$(BUILD_DIR)/src/sysdolphin/baselib/controller.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/controller.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/rumble.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/spline.o	\
	$(BUILD_DIR)/asm/sysdolphin/baselib/mtx.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/util.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/objalloc.o  	\
	$(BUILD_DIR)/asm/sysdolphin/baselib/objalloc.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/robj.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/robj.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/id.o        \
	$(BUILD_DIR)/src/sysdolphin/baselib/wobj.o      \
	$(BUILD_DIR)/asm/sysdolphin/baselib/wobj.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/fog.o	    \
	$(BUILD_DIR)/asm/sysdolphin/baselib/perf.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/list.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/object.o    \
	$(BUILD_DIR)/asm/sysdolphin/baselib/quatlib.o   \
	$(BUILD_DIR)/src/sysdolphin/baselib/memory.o	\
	$(BUILD_DIR)/src/sysdolphin/baselib/shadow.o	\
	$(BUILD_DIR)/asm/sysdolphin/baselib/shadow.o	\
	$(BUILD_DIR)/src/sysdolphin/baselib/archive.o	\
	$(BUILD_DIR)/src/sysdolphin/baselib/random.o	\
	$(BUILD_DIR)/asm/sysdolphin/baselib/bytecode.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/class.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/class.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/hash.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/texp.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/texp.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/texpdag.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/leak.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/debug.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/synth.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/AXDriver.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/devcom.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/gobjproc.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/gobjplink.o			\
	$(BUILD_DIR)/src/sysdolphin/baselib/gobjgxlink.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/gobjgxlink.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/gobjobject.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/gobjuserdata.o		\
	$(BUILD_DIR)/src/sysdolphin/baselib/gobj.o	    \
	$(BUILD_DIR)/asm/sysdolphin/baselib/gobj.o	    \
	$(BUILD_DIR)/asm/sysdolphin/baselib/code_80391580.o		\
	$(BUILD_DIR)/asm/sysdolphin/baselib/psdisp.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/psdisptev.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/psappsrt.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/sobjlib.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/sislib.o			\
	$(BUILD_DIR)/asm/sysdolphin/baselib/code_803A949C.o		\
