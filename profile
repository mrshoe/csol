


call graph profile:
          The sum of self and descendents is the major sort
          for this listing.

          function entries:

index     the index of the function in the call graph
          listing, as an aid to locating it (see below).

%time     the percentage of the total time of the program
          accounted for by this function and its
          descendents.

self      the number of seconds spent in this function
          itself.

descendents
          the number of seconds spent in the descendents of
          this function on behalf of this function.

called    the number of times this function is called (other
          than recursive calls).

self      the number of times this function calls itself
          recursively.

name      the name of the function, with an indication of
          its membership in a cycle, if any.

index     the index of the function in the call graph
          listing, as an aid to locating it.



          parent listings:

self*     the number of seconds of this function's self time
          which is due to calls from this parent.

descendents*
          the number of seconds of this function's
          descendent time which is due to calls from this
          parent.

called**  the number of times this function is called by
          this parent.  This is the numerator of the
          fraction which divides up the function's time to
          its parents.

total*    the number of times this function was called by
          all of its parents.  This is the denominator of
          the propagation fraction.

parents   the name of this parent, with an indication of the
          parent's membership in a cycle, if any.

index     the index of this parent in the call graph
          listing, as an aid in locating it.



          children listings:

self*     the number of seconds of this child's self time
          which is due to being called by this function.

descendent*
          the number of seconds of this child's descendent's
          time which is due to being called by this
          function.

called**  the number of times this child is called by this
          function.  This is the numerator of the
          propagation fraction for this child.

total*    the number of times this child is called by all
          functions.  This is the denominator of the
          propagation fraction.

children  the name of this child, and an indication of its
          membership in a cycle, if any.

index     the index of this child in the call graph listing,
          as an aid to locating it.



          * these fields are omitted for parents (or
          children) in the same cycle as the function.  If
          the function (or child) is a member of a cycle,
          the propagated times and propagation denominator
          represent the self time and descendent time of the
          cycle as a whole.

          ** static-only parents and children are indicated
          by a call count of 0.



          cycle listings:
          the cycle as a whole is listed with the same
          fields as a function entry.  Below it are listed
          the members of the cycle, and their contributions
          to the time and call counts of the cycle.


granularity: each sample hit covers 4 byte(s) for 0.09% of 11.26 seconds

                                  called/total       parents 
index  %time    self descendents  called+self    name    	index
                                  called/total       children

                                                     <spontaneous>
[1]     83.2    0.00        9.37                 -[GLUTView drawRect:] [1]
                0.00        9.37      41/41          _Display [2]

-----------------------------------------------

                0.00        9.37      41/41          -[GLUTView drawRect:] [1]
[2]     83.2    0.00        9.37      41         _Display [2]
                0.04        9.33      41/41          _SceneRayTrace [3]
                0.00        0.00      41/41          _ImageDraw [25670]

-----------------------------------------------

                0.04        9.33      41/41          _Display [2]
[3]     83.2    0.04        9.33      41         _SceneRayTrace [3]
                0.19        4.66  312117/312117      _SceneShade [10]
                0.02        4.21  312144/643392      _SceneBSPTrace [4]
                0.12        0.13  312144/312144      _CameraEyeRay [14]
                0.00        0.00      41/41          _ImageNextChunk [25671]

-----------------------------------------------

                0.02        4.21  312144/643392      _SceneRayTrace [3]
                0.02        4.47  331248/643392      _SceneShade [10]
[4]     77.4    0.04        8.68  643392         _SceneBSPTrace [4]
                0.07        8.61  643392/643392      _BSPTreeIntersect [5]

-----------------------------------------------

                0.07        8.61  643392/643392      _SceneBSPTrace [4]
[5]     77.0    0.07        8.61  643392         _BSPTreeIntersect [5]
                1.71        6.51  643392/643392      _BSPNodeIntersect <cycle 1> [7]
                0.34        0.05  643392/684500      _BoxIntersect [13]

-----------------------------------------------

[6]     73.0    1.71        6.51  643392+19522988 <cycle 1 as a whole>	[6]
                0.57        6.09 11870903             _BSPNodeIntersect <cycle 1> [7]
                1.14        0.42 8295477             _BSPInteriorNodeIntersect <cycle 1> [11]

-----------------------------------------------

                                 11227511             _BSPInteriorNodeIntersect <cycle 1> [11]
                1.71        6.51  643392/643392      _BSPTreeIntersect [5]
[7]     59.2    0.57        6.09 11870903         _BSPNodeIntersect <cycle 1> [7]
                0.91        5.18 3575426/3575426     _BSPLeafNodeIntersect [8]
                                 8295477             _BSPInteriorNodeIntersect <cycle 1> [11]

-----------------------------------------------

                0.91        5.18 3575426/3575426     _BSPNodeIntersect <cycle 1> [7]
[8]     54.1    0.91        5.18 3575426         _BSPLeafNodeIntersect [8]
                4.92        0.23 12728008/12735744     _TriangleIntersect [9]
                0.03        0.00 1211436/1211436     _PointLightIntersect [40]

-----------------------------------------------

                0.00        0.00    7736/12735744     _TriangleIntersectsBoxDiagonals [78]
                4.92        0.23 12728008/12735744     _BSPLeafNodeIntersect [8]
[9]     45.8    4.92        0.23 12735744         _TriangleIntersect [9]
                0.08        0.00 1326528/2925456     _V3Scale [16]
                0.08        0.00  331632/644095      _V3Normalize [21]
                0.08        0.00  994896/1326144     _V3AddTo [23]

-----------------------------------------------

                                    6597             _SceneShade [10]
                0.19        4.66  312117/312117      _SceneRayTrace [3]
[10]    43.1    0.19        4.66  312117+6597   _SceneShade [10]
                0.02        4.47  331248/643392      _SceneBSPTrace [4]
                0.05        0.00  318714/330420      _V3Set [33]
                0.04        0.00  662496/2925456     _V3Scale [16]
                0.02        0.00  331248/1326144     _V3AddTo [23]
                0.02        0.00  320506/320506      _V3Dot [45]
                0.02        0.00  318593/318593      _V3Mag2 [46]
                0.02        0.00  318593/367438      _V3Subtract [44]
                                    6597             _SceneShade [10]

-----------------------------------------------

                                 8295477             _BSPNodeIntersect <cycle 1> [7]
[11]    13.8    1.14        0.42 8295477         _BSPInteriorNodeIntersect <cycle 1> [11]
                0.42        0.00 16590954/16617345     _V3Component [12]
                                 11227511             _BSPNodeIntersect <cycle 1> [7]

-----------------------------------------------

                0.00        0.00    5295/16617345     _BSPNodeSubdivide [28]
                0.00        0.00   21096/16617345     _TriangleExpandBox [79]
                0.42        0.00 16590954/16617345     _BSPInteriorNodeIntersect <cycle 1> [11]
[12]     3.7    0.42        0.00 16617345         _V3Component [12]

-----------------------------------------------

                0.02        0.00   41108/684500      _TriangleIntersectsBoxEdges [39]
                0.34        0.05  643392/684500      _BSPTreeIntersect [5]
[13]     3.6    0.36        0.05  684500         _BoxIntersect [13]
                0.05        0.00 1109257/1109257     _FloatSwap [32]

-----------------------------------------------

                0.12        0.13  312144/312144      _SceneRayTrace [3]
[14]     2.2    0.12        0.13  312144         _CameraEyeRay [14]
                0.07        0.00  312144/644095      _V3Normalize [21]
                0.06        0.00  936432/2925456     _V3Scale [16]

-----------------------------------------------

                                                     <spontaneous>
[15]     2.0    0.23        0.00                 ___sqrt [15]

-----------------------------------------------

                0.04        0.00  662496/2925456     _SceneShade [10]
                0.06        0.00  936432/2925456     _CameraEyeRay [14]
                0.08        0.00 1326528/2925456     _TriangleIntersect [9]
[16]     1.6    0.18        0.00 2925456         _V3Scale [16]

-----------------------------------------------

                                                     <spontaneous>
[17]     1.6    0.18        0.00                 __Z15glgProcessColorPK12GLDPixelModePK12GLGOperationm [17]

-----------------------------------------------

                                                     <spontaneous>
[18]     1.6    0.18        0.00                 ___CFDictionaryFindBuckets1b [18]

-----------------------------------------------

                                                     <spontaneous>
[19]     1.5    0.17        0.00                 _CFEqual [19]

-----------------------------------------------

                                                     <spontaneous>
[20]     1.3    0.15        0.00                 ___CFStringHash [20]

-----------------------------------------------

                0.00        0.00       1/644095      _CameraCalcViewDir [85]
                0.00        0.00       1/644095      _CameraUpdate [86]
                0.00        0.00     317/644095      _LoadObj [83]
                0.07        0.00  312144/644095      _CameraEyeRay [14]
                0.08        0.00  331632/644095      _TriangleIntersect [9]
[21]     1.3    0.15        0.00  644095         _V3Normalize [21]

-----------------------------------------------

                                                     <spontaneous>
[22]     1.0    0.11        0.00                 ___CFStringEqual [22]

-----------------------------------------------

                0.02        0.00  331248/1326144     _SceneShade [10]
                0.08        0.00  994896/1326144     _TriangleIntersect [9]
[23]     0.9    0.10        0.00 1326144         _V3AddTo [23]

-----------------------------------------------

                                                     <spontaneous>
[24]     0.6    0.07        0.00                 _CFHash [24]

-----------------------------------------------

                0.00        0.06       1/1           __start [26]
[25]     0.6    0.00        0.06       1         _main [25]
                0.00        0.06       1/1           _BSPTreeBuild [27]
                0.00        0.00       1/1           _SolInit [81]
                0.00        0.00       1/1           _CameraInit [84]
                0.00        0.00       1/1           _SceneInit [87]
                0.00        0.00       1/1           _OpenGLInit [25688]
                0.00        0.00       1/1           _ImageInit [25686]

-----------------------------------------------

                                                     <spontaneous>
[26]     0.6    0.00        0.06                 __start [26]
                0.00        0.06       1/1           _main [25]

-----------------------------------------------

                0.00        0.06       1/1           _main [25]
[27]     0.6    0.00        0.06       1         _BSPTreeBuild [27]
                0.00        0.06       1/1           _BSPNodeSubdivide [28]
                0.00        0.00     586/586         _TriangleExpandBox [79]
                0.00        0.00       2/330420      _V3Set [33]
                0.00        0.00       1/1           _PointLightExpandBox [25689]
                0.00        0.00       1/3           _ArrayInit [25677]

-----------------------------------------------

                                    1058             _BSPNodeSubdivide [28]
                0.00        0.06       1/1           _BSPTreeBuild [27]
[28]     0.6    0.00        0.06       1+1058   _BSPNodeSubdivide [28]
                0.02        0.04    2118/2118        _BSPNodePopulate [29]
                0.00        0.00    5295/16617345     _V3Component [12]
                                    1058             _BSPNodeSubdivide [28]

-----------------------------------------------

                0.02        0.04    2118/2118        _BSPNodeSubdivide [28]
[29]     0.6    0.02        0.04    2118         _BSPNodePopulate [29]
                0.00        0.04   49292/49292       _TriangleInBox [36]
                0.00        0.00   28856/29444       _ArrayInsert [25666]
                0.00        0.00      16/16          _PointLightInBox [25673]

-----------------------------------------------

                                                     <spontaneous>
[30]     0.5    0.06        0.00                 _CFDictionaryGetValueIfPresent [30]

-----------------------------------------------

                                                     <spontaneous>
[31]     0.5    0.06        0.00                 _getTag [31]

-----------------------------------------------

                0.05        0.00 1109257/1109257     _BoxIntersect [13]
[32]     0.4    0.05        0.00 1109257         _FloatSwap [32]

-----------------------------------------------

                0.00        0.00       1/330420      _SceneInit [87]
                0.00        0.00       2/330420      _BSPTreeBuild [27]
                0.00        0.00      70/330420      _yyparse [82]
                0.00        0.00     619/330420      _LoadObj [83]
                0.00        0.00   11014/330420      _TriangleIntersectsBoxDiagonals [78]
                0.05        0.00  318714/330420      _SceneShade [10]
[33]     0.4    0.05        0.00  330420         _V3Set [33]

-----------------------------------------------

                                                     <spontaneous>
[34]     0.4    0.05        0.00                 ___CFNumberGetValue [34]

-----------------------------------------------

                                                     <spontaneous>
[35]     0.4    0.05        0.00                 _bcmp [35]

-----------------------------------------------

                0.00        0.04   49292/49292       _BSPNodePopulate [29]
[36]     0.4    0.00        0.04   49292         _TriangleInBox [36]
                0.01        0.03   24863/24863       _TriangleIntersectsBoxEdges [39]
                0.00        0.01    2229/2229        _TriangleIntersectsBoxDiagonals [78]
                0.00        0.00   52957/52957       _BoxContainsPoint [25664]
                0.00        0.00   49292/49292       _TriangleOutsideBox [25665]

-----------------------------------------------

                                                     <spontaneous>
[37]     0.4    0.04        0.00                 _CFDictionarySetValue [37]

-----------------------------------------------

                                                     <spontaneous>
[38]     0.4    0.04        0.00                 _szone_free [38]

-----------------------------------------------

                0.01        0.03   24863/24863       _TriangleInBox [36]
[39]     0.3    0.01        0.03   24863         _TriangleIntersectsBoxEdges [39]
                0.02        0.00   41108/684500      _BoxIntersect [13]
                0.00        0.00   41108/367438      _V3Subtract [44]

-----------------------------------------------

                0.03        0.00 1211436/1211436     _BSPLeafNodeIntersect [8]
[40]     0.3    0.03        0.00 1211436         _PointLightIntersect [40]

-----------------------------------------------

                                                     <spontaneous>
[41]     0.3    0.03        0.00                 ___CFDictionaryEqual [41]

-----------------------------------------------

                                                     <spontaneous>
[42]     0.3    0.03        0.00                 __objc_search_builtins [42]

-----------------------------------------------

                                                     <spontaneous>
[43]     0.3    0.03        0.00                 _szone_malloc [43]

-----------------------------------------------

                0.00        0.00       1/367438      _CameraCalcViewDir [85]
                0.00        0.00    7736/367438      _TriangleIntersectsBoxDiagonals [78]
                0.00        0.00   41108/367438      _TriangleIntersectsBoxEdges [39]
                0.02        0.00  318593/367438      _SceneShade [10]
[44]     0.2    0.02        0.00  367438         _V3Subtract [44]

-----------------------------------------------

                0.02        0.00  320506/320506      _SceneShade [10]
[45]     0.2    0.02        0.00  320506         _V3Dot [45]

-----------------------------------------------

                0.02        0.00  318593/318593      _SceneShade [10]
[46]     0.2    0.02        0.00  318593         _V3Mag2 [46]

-----------------------------------------------

                                                     <spontaneous>
[47]     0.2    0.02        0.00                 ___CFSetFindBuckets2 [47]

-----------------------------------------------

                                                     <spontaneous>
[48]     0.2    0.02        0.00                 ___CFStringCreateImmutableFunnel3 [48]

-----------------------------------------------

                                                     <spontaneous>
[49]     0.2    0.02        0.00                 ___CF_INVOKE_CALLBACK [49]

-----------------------------------------------

                                                     <spontaneous>
[50]     0.2    0.02        0.00                 _sqrtf [50]

-----------------------------------------------

                                                     <spontaneous>
[51]     0.1    0.01        0.00                 +[NSScreen screens] [51]

-----------------------------------------------

                                                     <spontaneous>
[52]     0.1    0.01        0.00                 saveVEC_vr11 [52]

-----------------------------------------------

                                                     <spontaneous>
[53]     0.1    0.01        0.00                 _CFAllocatorAllocate [53]

-----------------------------------------------

                                                     <spontaneous>
[54]     0.1    0.01        0.00                 _CFDictionaryRemoveAllValues [54]

-----------------------------------------------

                                                     <spontaneous>
[55]     0.1    0.01        0.00                 _CFDictionaryRemoveValue [55]

-----------------------------------------------

                                                     <spontaneous>
[56]     0.1    0.01        0.00                 _CFRelease [56]

-----------------------------------------------

                                                     <spontaneous>
[57]     0.1    0.01        0.00                 _CGColorGetColorSpace [57]

-----------------------------------------------

                                                     <spontaneous>
[58]     0.1    0.01        0.00                 _IOCFUnserializeparse [58]

-----------------------------------------------

                                                     <spontaneous>
[59]     0.1    0.01        0.00                 _SendFontManagementMessageWithMessageStatus [59]

-----------------------------------------------

                                                     <spontaneous>
[60]     0.1    0.01        0.00                 __CFGetFileProperties [60]

-----------------------------------------------

                                                     <spontaneous>
[61]     0.1    0.01        0.00                 __CFURLInit [61]

-----------------------------------------------

                                                     <spontaneous>
[62]     0.1    0.01        0.00                 __NSBundleLoadCode [62]

-----------------------------------------------

                                                     <spontaneous>
[63]     0.1    0.01        0.00                 ___CFDictionaryGrow [63]

-----------------------------------------------

                                                     <spontaneous>
[64]     0.1    0.01        0.00                 ___CFNumberEqual [64]

-----------------------------------------------

                                                     <spontaneous>
[65]     0.1    0.01        0.00                 ___CFNumberEqualValue [65]

-----------------------------------------------

                                                     <spontaneous>
[66]     0.1    0.01        0.00                 ___CFPLDataDecode [66]

-----------------------------------------------

                                                     <spontaneous>
[67]     0.1    0.01        0.00                 ___CFStringDeallocate [67]

-----------------------------------------------

                                                     <spontaneous>
[68]     0.1    0.01        0.00                 __cache_fill [68]

-----------------------------------------------

                                                     <spontaneous>
[69]     0.1    0.01        0.00                 __cache_getMethod [69]

-----------------------------------------------

                                                     <spontaneous>
[70]     0.1    0.01        0.00                 __class_lookupMethodAndLoadCache [70]

-----------------------------------------------

                                                     <spontaneous>
[71]     0.1    0.01        0.00                 _getCFEncodedData [71]

-----------------------------------------------

                                                     <spontaneous>
[72]     0.1    0.01        0.00                 _getString [72]

-----------------------------------------------

                                                     <spontaneous>
[73]     0.1    0.01        0.00                 _gldGetTextureLevel [73]

-----------------------------------------------

                                                     <spontaneous>
[74]     0.1    0.01        0.00                 _gldUpdateDispatch [74]

-----------------------------------------------

                                                     <spontaneous>
[75]     0.1    0.01        0.00                 _io_connect_map_memory [75]

-----------------------------------------------

                                                     <spontaneous>
[76]     0.1    0.01        0.00                 _localeconv [76]

-----------------------------------------------

                                                     <spontaneous>
[77]     0.1    0.01        0.00                 _objc_msgSendSuper [77]

-----------------------------------------------

                0.00        0.01    2229/2229        _TriangleInBox [36]
[78]     0.0    0.00        0.01    2229         _TriangleIntersectsBoxDiagonals [78]
                0.00        0.00    7736/12735744     _TriangleIntersect [9]
                0.00        0.00   11014/330420      _V3Set [33]
                0.00        0.00    7736/367438      _V3Subtract [44]

-----------------------------------------------

                0.00        0.00     586/586         _BSPTreeBuild [27]
[79]     0.0    0.00        0.00     586         _TriangleExpandBox [79]
                0.00        0.00   21096/16617345     _V3Component [12]

-----------------------------------------------

                0.00        0.00       1/1           _SolInit [81]
[80]     0.0    0.00        0.00       1         _ParseFile [80]
                0.00        0.00       1/1           _yyparse [82]

-----------------------------------------------

                0.00        0.00       1/1           _main [25]
[81]     0.0    0.00        0.00       1         _SolInit [81]
                0.00        0.00       1/1           _ParseFile [80]

-----------------------------------------------

                0.00        0.00       1/1           _ParseFile [80]
[82]     0.0    0.00        0.00       1         _yyparse [82]
                0.00        0.00       1/1           _LoadObj [83]
                0.00        0.00      70/330420      _V3Set [33]
                0.00        0.00     523/523         _yylex [25669]
                0.00        0.00      11/11          _MaterialByName [25674]
                0.00        0.00      10/10          _TriangleNew [25675]
                0.00        0.00      10/586         _SceneAddObj [25668]
                0.00        0.00       4/4           _AddMaterial [25676]
                0.00        0.00       1/1           _yygrowstack [25695]
                0.00        0.00       1/1           _PointLightNew [25690]
                0.00        0.00       1/1           _SceneAddLight [25691]

-----------------------------------------------

                0.00        0.00       1/1           _yyparse [82]
[83]     0.0    0.00        0.00       1         _LoadObj [83]
                0.00        0.00     619/330420      _V3Set [33]
                0.00        0.00     317/644095      _V3Normalize [21]
                0.00        0.00    1728/1728        _get_indices [25667]
                0.00        0.00     576/586         _SceneAddObj [25668]

-----------------------------------------------

                0.00        0.00       1/1           _main [25]
[84]     0.0    0.00        0.00       1         _CameraInit [84]
                0.00        0.00       1/1           _CameraCalcViewDir [85]
                0.00        0.00       1/1           _CameraUpdate [86]

-----------------------------------------------

                0.00        0.00       1/1           _CameraInit [84]
[85]     0.0    0.00        0.00       1         _CameraCalcViewDir [85]
                0.00        0.00       1/644095      _V3Normalize [21]
                0.00        0.00       1/367438      _V3Subtract [44]

-----------------------------------------------

                0.00        0.00       1/1           _CameraInit [84]
[86]     0.0    0.00        0.00       1         _CameraUpdate [86]
                0.00        0.00       1/644095      _V3Normalize [21]
                0.00        0.00       2/2           _V3Cross [25679]

-----------------------------------------------

                0.00        0.00       1/1           _main [25]
[87]     0.0    0.00        0.00       1         _SceneInit [87]
                0.00        0.00       1/330420      _V3Set [33]
                0.00        0.00       2/3           _ArrayInit [25677]

-----------------------------------------------

                0.00        0.00   52957/52957       _TriangleInBox [36]
[25664   0.0    0.00        0.00   52957         _BoxContainsPoint [25664]

-----------------------------------------------

                0.00        0.00   49292/49292       _TriangleInBox [36]
[25665   0.0    0.00        0.00   49292         _TriangleOutsideBox [25665]

-----------------------------------------------

                0.00        0.00       2/29444       _SceneAddLight [25691]
                0.00        0.00     586/29444       _SceneAddObj [25668]
                0.00        0.00   28856/29444       _BSPNodePopulate [29]
[25666   0.0    0.00        0.00   29444         _ArrayInsert [25666]

-----------------------------------------------

                0.00        0.00    1728/1728        _LoadObj [83]
[25667   0.0    0.00        0.00    1728         _get_indices [25667]

-----------------------------------------------

                0.00        0.00      10/586         _yyparse [82]
                0.00        0.00     576/586         _LoadObj [83]
[25668   0.0    0.00        0.00     586         _SceneAddObj [25668]
                0.00        0.00     586/29444       _ArrayInsert [25666]

-----------------------------------------------

                0.00        0.00     523/523         _yyparse [82]
[25669   0.0    0.00        0.00     523         _yylex [25669]
                0.00        0.00       2/2           _yy_get_next_buffer [25682]
                0.00        0.00       1/1           _yy_create_buffer [25693]
                0.00        0.00       1/3           _yy_load_buffer_state [25678]
                0.00        0.00       1/1           _yy_get_previous_state [25694]

-----------------------------------------------

                0.00        0.00      41/41          _Display [2]
[25670   0.0    0.00        0.00      41         _ImageDraw [25670]

-----------------------------------------------

                0.00        0.00      41/41          _SceneRayTrace [3]
[25671   0.0    0.00        0.00      41         _ImageNextChunk [25671]

-----------------------------------------------

                0.00        0.00      40/40          -[GLUTApplication run] [2314]
[25672   0.0    0.00        0.00      40         _Idle [25672]

-----------------------------------------------

                0.00        0.00      16/16          _BSPNodePopulate [29]
[25673   0.0    0.00        0.00      16         _PointLightInBox [25673]

-----------------------------------------------

                0.00        0.00      11/11          _yyparse [82]
[25674   0.0    0.00        0.00      11         _MaterialByName [25674]

-----------------------------------------------

                0.00        0.00      10/10          _yyparse [82]
[25675   0.0    0.00        0.00      10         _TriangleNew [25675]

-----------------------------------------------

                0.00        0.00       4/4           _yyparse [82]
[25676   0.0    0.00        0.00       4         _AddMaterial [25676]

-----------------------------------------------

                0.00        0.00       1/3           _BSPTreeBuild [27]
                0.00        0.00       2/3           _SceneInit [87]
[25677   0.0    0.00        0.00       3         _ArrayInit [25677]

-----------------------------------------------

                0.00        0.00       1/3           _yylex [25669]
                0.00        0.00       1/3           _yyrestart [25696]
                0.00        0.00       1/3           _yy_flush_buffer [25681]
[25678   0.0    0.00        0.00       3         _yy_load_buffer_state [25678]

-----------------------------------------------

                0.00        0.00       2/2           _CameraUpdate [86]
[25679   0.0    0.00        0.00       2         _V3Cross [25679]

-----------------------------------------------

                0.00        0.00       2/2           _yy_create_buffer [25693]
[25680   0.0    0.00        0.00       2         _yy_flex_alloc [25680]

-----------------------------------------------

                0.00        0.00       2/2           _yy_init_buffer [25683]
[25681   0.0    0.00        0.00       2         _yy_flush_buffer [25681]
                0.00        0.00       1/3           _yy_load_buffer_state [25678]

-----------------------------------------------

                0.00        0.00       2/2           _yylex [25669]
[25682   0.0    0.00        0.00       2         _yy_get_next_buffer [25682]
                0.00        0.00       1/1           _yyrestart [25696]

-----------------------------------------------

                0.00        0.00       1/2           _yyrestart [25696]
                0.00        0.00       1/2           _yy_create_buffer [25693]
[25683   0.0    0.00        0.00       2         _yy_init_buffer [25683]
                0.00        0.00       2/2           _yy_flush_buffer [25681]

-----------------------------------------------

                0.00        0.00       1/1           _SolExit [25692]
[25684   0.0    0.00        0.00       1         _ImageDelete [25684]

-----------------------------------------------

                0.00        0.00       1/1           _ImageInit [25686]
[25685   0.0    0.00        0.00       1         _ImageGenDisplayList [25685]

-----------------------------------------------

                0.00        0.00       1/1           _main [25]
[25686   0.0    0.00        0.00       1         _ImageInit [25686]
                0.00        0.00       1/1           _ImageGenDisplayList [25685]

-----------------------------------------------

                0.00        0.00       1/1           -[GLUTView keyDown:] [2432]
[25687   0.0    0.00        0.00       1         _Keyboard [25687]
                0.00        0.00       1/1           _SolExit [25692]

-----------------------------------------------

                0.00        0.00       1/1           _main [25]
[25688   0.0    0.00        0.00       1         _OpenGLInit [25688]

-----------------------------------------------

                0.00        0.00       1/1           _BSPTreeBuild [27]
[25689   0.0    0.00        0.00       1         _PointLightExpandBox [25689]

-----------------------------------------------

                0.00        0.00       1/1           _yyparse [82]
[25690   0.0    0.00        0.00       1         _PointLightNew [25690]

-----------------------------------------------

                0.00        0.00       1/1           _yyparse [82]
[25691   0.0    0.00        0.00       1         _SceneAddLight [25691]
                0.00        0.00       2/29444       _ArrayInsert [25666]

-----------------------------------------------

                0.00        0.00       1/1           _Keyboard [25687]
[25692   0.0    0.00        0.00       1         _SolExit [25692]
                0.00        0.00       1/1           _ImageDelete [25684]

-----------------------------------------------

                0.00        0.00       1/1           _yylex [25669]
[25693   0.0    0.00        0.00       1         _yy_create_buffer [25693]
                0.00        0.00       2/2           _yy_flex_alloc [25680]
                0.00        0.00       1/2           _yy_init_buffer [25683]

-----------------------------------------------

                0.00        0.00       1/1           _yylex [25669]
[25694   0.0    0.00        0.00       1         _yy_get_previous_state [25694]

-----------------------------------------------

                0.00        0.00       1/1           _yyparse [82]
[25695   0.0    0.00        0.00       1         _yygrowstack [25695]

-----------------------------------------------

                0.00        0.00       1/1           _yy_get_next_buffer [25682]
[25696   0.0    0.00        0.00       1         _yyrestart [25696]
                0.00        0.00       1/2           _yy_init_buffer [25683]
                0.00        0.00       1/3           _yy_load_buffer_state [25678]

-----------------------------------------------





flat profile:

 %         the percentage of the total running time of the
time       program used by this function.

cumulative a running sum of the number of seconds accounted
 seconds   for by this function and those listed above it.

 self      the number of seconds accounted for by this
seconds    function alone.  This is the major sort for this
           listing.

calls      the number of times this function was invoked, if
           this function is profiled, else blank.
 
 self      the average number of milliseconds spent in this
ms/call    function per call, if this function is profiled,
	   else blank.

 total     the average number of milliseconds spent in this
ms/call    function and its descendents per call, if this 
	   function is profiled, else blank.

name       the name of the function.  This is the minor sort
           for this listing. The index shows the location of
	   the function in the gprof listing. If the index is
	   in parenthesis it shows where it would appear in
	   the gprof listing if it were to be printed.


granularity: each sample hit covers 4 byte(s) for 0.06% of 17.96 seconds

  %   cumulative   self              self     total           
 time   seconds   seconds    calls  ms/call  ms/call  name    
 27.4       4.92     4.92 12735744     0.00     0.00  _TriangleIntersect [9]
 19.0       8.34     3.42                             _moncount (122058)
 18.3      11.62     3.28                             mcount (24286)
  6.3      12.76     1.14  8295477     0.00     0.00  _BSPInteriorNodeIntersect <cycle 1> [11]
  5.1      13.67     0.91  3575426     0.00     0.00  _BSPLeafNodeIntersect [8]
  3.2      14.24     0.57 11870903     0.00     0.00  _BSPNodeIntersect <cycle 1> [7]
  2.3      14.66     0.42 16617345     0.00     0.00  _V3Component [12]
  2.0      15.02     0.36   684500     0.00     0.00  _BoxIntersect [13]
  1.3      15.25     0.23                             ___sqrt [15]
  1.1      15.44     0.19   312117     0.00     0.02  _SceneShade [10]
  1.0      15.62     0.18  2925456     0.00     0.00  _V3Scale [16]
  1.0      15.80     0.18                             __Z15glgProcessColorPK12GLDPixelModePK12GLGOperationm [17]
  1.0      15.98     0.18                             ___CFDictionaryFindBuckets1b [18]
  0.9      16.15     0.17                             _CFEqual [19]
  0.8      16.30     0.15   644095     0.00     0.00  _V3Normalize [21]
  0.8      16.45     0.15                             ___CFStringHash [20]
  0.7      16.57     0.12   312144     0.00     0.00  _CameraEyeRay [14]
  0.6      16.68     0.11                             ___CFStringEqual [22]
  0.6      16.78     0.10  1326144     0.00     0.00  _V3AddTo [23]
  0.4      16.85     0.07   643392     0.00     0.01  _BSPTreeIntersect [5]
  0.4      16.92     0.07                             _CFHash [24]
  0.3      16.98     0.06                             _CFDictionaryGetValueIfPresent [30]
  0.3      17.04     0.06                             _getTag [31]
  0.3      17.09     0.05  1109257     0.00     0.00  _FloatSwap [32]
  0.3      17.14     0.05   330420     0.00     0.00  _V3Set [33]
  0.3      17.19     0.05                             ___CFNumberGetValue [34]
  0.3      17.24     0.05                             _bcmp [35]
  0.2      17.28     0.04   643392     0.00     0.01  _SceneBSPTrace [4]
  0.2      17.32     0.04       41     0.98   228.47  _SceneRayTrace [3]
  0.2      17.36     0.04                             _CFDictionarySetValue [37]
  0.2      17.40     0.04                             _szone_free [38]
  0.2      17.43     0.03  1211436     0.00     0.00  _PointLightIntersect [40]
  0.2      17.46     0.03                             ___CFDictionaryEqual [41]
  0.2      17.49     0.03                             __objc_search_builtins [42]
  0.2      17.52     0.03                             _szone_malloc [43]
  0.1      17.54     0.02   367438     0.00     0.00  _V3Subtract [44]
  0.1      17.56     0.02   320506     0.00     0.00  _V3Dot [45]
  0.1      17.58     0.02   318593     0.00     0.00  _V3Mag2 [46]
  0.1      17.60     0.02     2118     0.01     0.03  _BSPNodePopulate [29]
  0.1      17.62     0.02                             ___CFSetFindBuckets2 [47]
  0.1      17.64     0.02                             ___CFStringCreateImmutableFunnel3 [48]
  0.1      17.66     0.02                             ___CF_INVOKE_CALLBACK [49]
  0.1      17.68     0.02                             _sqrtf [50]
  0.1      17.69     0.01    24863     0.00     0.00  _TriangleIntersectsBoxEdges [39]
  0.1      17.70     0.01                             +[NSScreen screens] [51]
  0.1      17.71     0.01                             _CFAllocatorAllocate [53]
  0.1      17.72     0.01                             _CFDictionaryRemoveAllValues [54]
  0.1      17.73     0.01                             _CFDictionaryRemoveValue [55]
  0.1      17.74     0.01                             _CFRelease [56]
  0.1      17.75     0.01                             _CGColorGetColorSpace [57]
  0.1      17.76     0.01                             _IOCFUnserializeparse [58]
  0.1      17.77     0.01                             _SendFontManagementMessageWithMessageStatus [59]
  0.1      17.78     0.01                             __CFGetFileProperties [60]
  0.1      17.79     0.01                             __CFURLInit [61]
  0.1      17.80     0.01                             __NSBundleLoadCode [62]
  0.1      17.81     0.01                             ___CFDictionaryGrow [63]
  0.1      17.82     0.01                             ___CFNumberEqual [64]
  0.1      17.83     0.01                             ___CFNumberEqualValue [65]
  0.1      17.84     0.01                             ___CFPLDataDecode [66]
  0.1      17.85     0.01                             ___CFStringDeallocate [67]
  0.1      17.86     0.01                             __cache_fill [68]
  0.1      17.87     0.01                             __cache_getMethod [69]
  0.1      17.88     0.01                             __class_lookupMethodAndLoadCache [70]
  0.1      17.89     0.01                             _getCFEncodedData [71]
  0.1      17.90     0.01                             _getString [72]
  0.1      17.91     0.01                             _gldGetTextureLevel [73]
  0.1      17.92     0.01                             _gldUpdateDispatch [74]
  0.1      17.93     0.01                             _io_connect_map_memory [75]
  0.1      17.94     0.01                             _localeconv [76]
  0.1      17.95     0.01                             _objc_msgSendSuper [77]
  0.1      17.96     0.01                             saveVEC_vr11 [52]
  0.0      17.96     0.00    52957     0.00     0.00  _BoxContainsPoint [25664]
  0.0      17.96     0.00    49292     0.00     0.00  _TriangleInBox [36]
  0.0      17.96     0.00    49292     0.00     0.00  _TriangleOutsideBox [25665]
  0.0      17.96     0.00    29444     0.00     0.00  _ArrayInsert [25666]
  0.0      17.96     0.00     2229     0.00     0.00  _TriangleIntersectsBoxDiagonals [78]
  0.0      17.96     0.00     1728     0.00     0.00  _get_indices [25667]
  0.0      17.96     0.00      586     0.00     0.00  _SceneAddObj [25668]
  0.0      17.96     0.00      586     0.00     0.00  _TriangleExpandBox [79]
  0.0      17.96     0.00      523     0.00     0.00  _yylex [25669]
  0.0      17.96     0.00       41     0.00   228.47  _Display [2]
  0.0      17.96     0.00       41     0.00     0.00  _ImageDraw [25670]
  0.0      17.96     0.00       41     0.00     0.00  _ImageNextChunk [25671]
  0.0      17.96     0.00       40     0.00     0.00  _Idle [25672]
  0.0      17.96     0.00       16     0.00     0.00  _PointLightInBox [25673]
  0.0      17.96     0.00       11     0.00     0.00  _MaterialByName [25674]
  0.0      17.96     0.00       10     0.00     0.00  _TriangleNew [25675]
  0.0      17.96     0.00        4     0.00     0.00  _AddMaterial [25676]
  0.0      17.96     0.00        3     0.00     0.00  _ArrayInit [25677]
  0.0      17.96     0.00        3     0.00     0.00  _yy_load_buffer_state [25678]
  0.0      17.96     0.00        2     0.00     0.00  _V3Cross [25679]
  0.0      17.96     0.00        2     0.00     0.00  _yy_flex_alloc [25680]
  0.0      17.96     0.00        2     0.00     0.00  _yy_flush_buffer [25681]
  0.0      17.96     0.00        2     0.00     0.00  _yy_get_next_buffer [25682]
  0.0      17.96     0.00        2     0.00     0.00  _yy_init_buffer [25683]
  0.0      17.96     0.00        1     0.00    62.21  _BSPNodeSubdivide [28]
  0.0      17.96     0.00        1     0.00    62.75  _BSPTreeBuild [27]
  0.0      17.96     0.00        1     0.00     0.00  _CameraCalcViewDir [85]
  0.0      17.96     0.00        1     0.00     0.00  _CameraInit [84]
  0.0      17.96     0.00        1     0.00     0.00  _CameraUpdate [86]
  0.0      17.96     0.00        1     0.00     0.00  _ImageDelete [25684]
  0.0      17.96     0.00        1     0.00     0.00  _ImageGenDisplayList [25685]
  0.0      17.96     0.00        1     0.00     0.00  _ImageInit [25686]
  0.0      17.96     0.00        1     0.00     0.00  _Keyboard [25687]
  0.0      17.96     0.00        1     0.00     0.17  _LoadObj [83]
  0.0      17.96     0.00        1     0.00     0.00  _OpenGLInit [25688]
  0.0      17.96     0.00        1     0.00     0.18  _ParseFile [80]
  0.0      17.96     0.00        1     0.00     0.00  _PointLightExpandBox [25689]
  0.0      17.96     0.00        1     0.00     0.00  _PointLightNew [25690]
  0.0      17.96     0.00        1     0.00     0.00  _SceneAddLight [25691]
  0.0      17.96     0.00        1     0.00     0.00  _SceneInit [87]
  0.0      17.96     0.00        1     0.00     0.00  _SolExit [25692]
  0.0      17.96     0.00        1     0.00     0.18  _SolInit [81]
  0.0      17.96     0.00        1     0.00    62.92  _main [25]
  0.0      17.96     0.00        1     0.00     0.00  _yy_create_buffer [25693]
  0.0      17.96     0.00        1     0.00     0.00  _yy_get_previous_state [25694]
  0.0      17.96     0.00        1     0.00     0.00  _yygrowstack [25695]
  0.0      17.96     0.00        1     0.00     0.18  _yyparse [82]
  0.0      17.96     0.00        1     0.00     0.00  _yyrestart [25696]

Index by function name

  [51] +[NSScreen screens][25689 _PointLightExpandBo  [47] ___CFSetFindBuckets
[25676 _AddMaterial       [25673 _PointLightInBox     [48] ___CFStringCreateIm
[25677 _ArrayInit           [40] _PointLightIntersec  [67] ___CFStringDealloca
[25666 _ArrayInsert       [25690 _PointLightNew       [22] ___CFStringEqual   
  [11] _BSPInteriorNodeInt[25691 _SceneAddLight       [20] ___CFStringHash    
   [8] _BSPLeafNodeInterse[25668 _SceneAddObj         [49] ___CF_INVOKE_CALLBA
   [7] _BSPNodeIntersect     [4] _SceneBSPTrace       [15] ___sqrt            
  [29] _BSPNodePopulate     [87] _SceneInit           [68] __cache_fill       
  [28] _BSPNodeSubdivide     [3] _SceneRayTrace       [69] __cache_getMethod  
  [27] _BSPTreeBuild        [10] _SceneShade          [70] __class_lookupMetho
   [5] _BSPTreeIntersect    [59] _SendFontManagement  [42] __objc_search_built
[25664 _BoxContainsPoint  [25692 _SolExit             [35] _bcmp              
  [13] _BoxIntersect        [81] _SolInit             [71] _getCFEncodedData  
  [53] _CFAllocatorAllocat  [79] _TriangleExpandBox   [72] _getString         
  [30] _CFDictionaryGetVal  [36] _TriangleInBox       [31] _getTag            
  [54] _CFDictionaryRemove   [9] _TriangleIntersect [25667 _get_indices       
  [55] _CFDictionaryRemove  [78] _TriangleIntersects  [73] _gldGetTextureLevel
  [37] _CFDictionarySetVal  [39] _TriangleIntersects  [74] _gldUpdateDispatch 
  [19] _CFEqual           [25675 _TriangleNew         [75] _io_connect_map_mem
  [24] _CFHash            [25665 _TriangleOutsideBox  [76] _localeconv        
  [56] _CFRelease           [23] _V3AddTo             [25] _main              
  [57] _CGColorGetColorSpa  [12] _V3Component       (12205 _moncount          
  [85] _CameraCalcViewDir [25679 _V3Cross             [77] _objc_msgSendSuper 
  [14] _CameraEyeRay        [45] _V3Dot               [50] _sqrtf             
  [84] _CameraInit          [46] _V3Mag2              [38] _szone_free        
  [86] _CameraUpdate        [21] _V3Normalize         [43] _szone_malloc      
   [2] _Display             [16] _V3Scale           [25693 _yy_create_buffer  
  [32] _FloatSwap           [33] _V3Set             [25680 _yy_flex_alloc     
  [58] _IOCFUnserializepar  [44] _V3Subtract        [25681 _yy_flush_buffer   
[25672 _Idle                [60] __CFGetFileProperti[25682 _yy_get_next_buffer
[25684 _ImageDelete         [61] __CFURLInit        [25694 _yy_get_previous_st
[25670 _ImageDraw           [62] __NSBundleLoadCode [25683 _yy_init_buffer    
[25685 _ImageGenDisplayLis  [17] __Z15glgProcessColo[25678 _yy_load_buffer_sta
[25686 _ImageInit           [41] ___CFDictionaryEqua[25695 _yygrowstack       
[25671 _ImageNextChunk      [18] ___CFDictionaryFind[25669 _yylex             
[25687 _Keyboard            [63] ___CFDictionaryGrow  [82] _yyparse           
  [83] _LoadObj             [64] ___CFNumberEqual   [25696 _yyrestart         
[25674 _MaterialByName      [65] ___CFNumberEqualVal(24286 mcount             
[25688 _OpenGLInit          [34] ___CFNumberGetValue  [52] saveVEC_vr11       
  [80] _ParseFile           [66] ___CFPLDataDecode     [6] <cycle 1>          
