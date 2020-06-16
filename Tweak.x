%group BackgroundPlayback
	%hook YTSingleVideo
		- (BOOL)isPlayableInBackground {
			return YES;
		}
	%end

	%hook YTPlaybackData
		- (BOOL)isPlayableInBackground {
			return YES;
		}
	%end

	%hook YTPlaybackBackgroundTaskController
		- (BOOL)isContentPlayableInBackground {
			return YES;
		}

	%end

	%hook YTIPlayerResponse
		- (BOOL)isPlayableInBackground {
			return YES;
		}
	%end

	%hook YTIPlayabilityStatus
		- (BOOL)isPlayableInBackground {
			return YES;
		}

	%end

	%hook YTPlaybackBackgroundTaskController
		- (void)setContentPlayableInBackground: (BOOL)arg {
			%orig(YES);
		}
	%end
%end

%group BlockAds
	@interface YTAdsControlFlowPlaybackCoordinator
		- (void)adSlotDidComplete;
	@end
	%hook YTAdsControlFlowPlaybackCoordinator
		- (void)startOverlay {
			[self adSlotDidComplete];
		}
	%end
%end

%ctor {
	%init(BackgroundPlayback);
	%init(BlockAds);
}