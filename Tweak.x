// iOS 17+ druid picks DRRemotePasteAnnouncer (posts a _UISystemBannerRequest)
// instead of DRPasteAnnouncer behind a feature flag, so hook whichever exists.

%group DRPasteAnnouncer
%hook DRPasteAnnouncer
- (void)announcePaste:(id)arg1{

}
%end //DRPasteAnnouncer
%end

%group DRRemotePasteAnnouncer
%hook DRRemotePasteAnnouncer
- (void)announcePaste:(id)arg1{

}
%end //DRRemotePasteAnnouncer
%end

%ctor{
	if(objc_getClass("DRPasteAnnouncer")) %init(DRPasteAnnouncer);
	if(objc_getClass("DRRemotePasteAnnouncer")) %init(DRRemotePasteAnnouncer);
}
