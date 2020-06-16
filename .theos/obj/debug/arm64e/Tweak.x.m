#line 1 "Tweak.x"

#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class YTSingleVideo; @class YTAdsControlFlowPlaybackCoordinator; @class YTIPlayabilityStatus; @class YTPlaybackBackgroundTaskController; @class YTIPlayerResponse; @class YTPlaybackData; 


#line 1 "Tweak.x"
static BOOL (*_logos_orig$BackgroundPlayback$YTSingleVideo$isPlayableInBackground)(_LOGOS_SELF_TYPE_NORMAL YTSingleVideo* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$BackgroundPlayback$YTSingleVideo$isPlayableInBackground(_LOGOS_SELF_TYPE_NORMAL YTSingleVideo* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$BackgroundPlayback$YTPlaybackData$isPlayableInBackground)(_LOGOS_SELF_TYPE_NORMAL YTPlaybackData* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$BackgroundPlayback$YTPlaybackData$isPlayableInBackground(_LOGOS_SELF_TYPE_NORMAL YTPlaybackData* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$BackgroundPlayback$YTPlaybackBackgroundTaskController$isContentPlayableInBackground)(_LOGOS_SELF_TYPE_NORMAL YTPlaybackBackgroundTaskController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$BackgroundPlayback$YTPlaybackBackgroundTaskController$isContentPlayableInBackground(_LOGOS_SELF_TYPE_NORMAL YTPlaybackBackgroundTaskController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$BackgroundPlayback$YTPlaybackBackgroundTaskController$setContentPlayableInBackground$)(_LOGOS_SELF_TYPE_NORMAL YTPlaybackBackgroundTaskController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$BackgroundPlayback$YTPlaybackBackgroundTaskController$setContentPlayableInBackground$(_LOGOS_SELF_TYPE_NORMAL YTPlaybackBackgroundTaskController* _LOGOS_SELF_CONST, SEL, BOOL); static BOOL (*_logos_orig$BackgroundPlayback$YTIPlayerResponse$isPlayableInBackground)(_LOGOS_SELF_TYPE_NORMAL YTIPlayerResponse* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$BackgroundPlayback$YTIPlayerResponse$isPlayableInBackground(_LOGOS_SELF_TYPE_NORMAL YTIPlayerResponse* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$BackgroundPlayback$YTIPlayabilityStatus$isPlayableInBackground)(_LOGOS_SELF_TYPE_NORMAL YTIPlayabilityStatus* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$BackgroundPlayback$YTIPlayabilityStatus$isPlayableInBackground(_LOGOS_SELF_TYPE_NORMAL YTIPlayabilityStatus* _LOGOS_SELF_CONST, SEL); 
	
		static BOOL _logos_method$BackgroundPlayback$YTSingleVideo$isPlayableInBackground(_LOGOS_SELF_TYPE_NORMAL YTSingleVideo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
			return YES;
		}
	

	
		static BOOL _logos_method$BackgroundPlayback$YTPlaybackData$isPlayableInBackground(_LOGOS_SELF_TYPE_NORMAL YTPlaybackData* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
			return YES;
		}
	

	
		static BOOL _logos_method$BackgroundPlayback$YTPlaybackBackgroundTaskController$isContentPlayableInBackground(_LOGOS_SELF_TYPE_NORMAL YTPlaybackBackgroundTaskController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
			return YES;
		}

	

	
		static BOOL _logos_method$BackgroundPlayback$YTIPlayerResponse$isPlayableInBackground(_LOGOS_SELF_TYPE_NORMAL YTIPlayerResponse* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
			return YES;
		}
	

	
		static BOOL _logos_method$BackgroundPlayback$YTIPlayabilityStatus$isPlayableInBackground(_LOGOS_SELF_TYPE_NORMAL YTIPlayabilityStatus* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
			return YES;
		}

	

	
		static void _logos_method$BackgroundPlayback$YTPlaybackBackgroundTaskController$setContentPlayableInBackground$(_LOGOS_SELF_TYPE_NORMAL YTPlaybackBackgroundTaskController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg) {
			_logos_orig$BackgroundPlayback$YTPlaybackBackgroundTaskController$setContentPlayableInBackground$(self, _cmd, YES);
		}
	


static void (*_logos_orig$BlockAds$YTAdsControlFlowPlaybackCoordinator$startOverlay)(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL); static void _logos_method$BlockAds$YTAdsControlFlowPlaybackCoordinator$startOverlay(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL); 
	@interface YTAdsControlFlowPlaybackCoordinator
		- (void)adSlotDidComplete;
	@end
	
		static void _logos_method$BlockAds$YTAdsControlFlowPlaybackCoordinator$startOverlay(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
			[self adSlotDidComplete];
			
		}
	


static __attribute__((constructor)) void _logosLocalCtor_544b3284(int __unused argc, char __unused **argv, char __unused **envp) {
	{Class _logos_class$BackgroundPlayback$YTSingleVideo = objc_getClass("YTSingleVideo"); MSHookMessageEx(_logos_class$BackgroundPlayback$YTSingleVideo, @selector(isPlayableInBackground), (IMP)&_logos_method$BackgroundPlayback$YTSingleVideo$isPlayableInBackground, (IMP*)&_logos_orig$BackgroundPlayback$YTSingleVideo$isPlayableInBackground);Class _logos_class$BackgroundPlayback$YTPlaybackData = objc_getClass("YTPlaybackData"); MSHookMessageEx(_logos_class$BackgroundPlayback$YTPlaybackData, @selector(isPlayableInBackground), (IMP)&_logos_method$BackgroundPlayback$YTPlaybackData$isPlayableInBackground, (IMP*)&_logos_orig$BackgroundPlayback$YTPlaybackData$isPlayableInBackground);Class _logos_class$BackgroundPlayback$YTPlaybackBackgroundTaskController = objc_getClass("YTPlaybackBackgroundTaskController"); MSHookMessageEx(_logos_class$BackgroundPlayback$YTPlaybackBackgroundTaskController, @selector(isContentPlayableInBackground), (IMP)&_logos_method$BackgroundPlayback$YTPlaybackBackgroundTaskController$isContentPlayableInBackground, (IMP*)&_logos_orig$BackgroundPlayback$YTPlaybackBackgroundTaskController$isContentPlayableInBackground);MSHookMessageEx(_logos_class$BackgroundPlayback$YTPlaybackBackgroundTaskController, @selector(setContentPlayableInBackground:), (IMP)&_logos_method$BackgroundPlayback$YTPlaybackBackgroundTaskController$setContentPlayableInBackground$, (IMP*)&_logos_orig$BackgroundPlayback$YTPlaybackBackgroundTaskController$setContentPlayableInBackground$);Class _logos_class$BackgroundPlayback$YTIPlayerResponse = objc_getClass("YTIPlayerResponse"); MSHookMessageEx(_logos_class$BackgroundPlayback$YTIPlayerResponse, @selector(isPlayableInBackground), (IMP)&_logos_method$BackgroundPlayback$YTIPlayerResponse$isPlayableInBackground, (IMP*)&_logos_orig$BackgroundPlayback$YTIPlayerResponse$isPlayableInBackground);Class _logos_class$BackgroundPlayback$YTIPlayabilityStatus = objc_getClass("YTIPlayabilityStatus"); MSHookMessageEx(_logos_class$BackgroundPlayback$YTIPlayabilityStatus, @selector(isPlayableInBackground), (IMP)&_logos_method$BackgroundPlayback$YTIPlayabilityStatus$isPlayableInBackground, (IMP*)&_logos_orig$BackgroundPlayback$YTIPlayabilityStatus$isPlayableInBackground);}
	{Class _logos_class$BlockAds$YTAdsControlFlowPlaybackCoordinator = objc_getClass("YTAdsControlFlowPlaybackCoordinator"); MSHookMessageEx(_logos_class$BlockAds$YTAdsControlFlowPlaybackCoordinator, @selector(startOverlay), (IMP)&_logos_method$BlockAds$YTAdsControlFlowPlaybackCoordinator$startOverlay, (IMP*)&_logos_orig$BlockAds$YTAdsControlFlowPlaybackCoordinator$startOverlay);}
}
