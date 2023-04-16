; ModuleID = 'decimal64.bc'
source_filename = "decimal64.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decimal64 = type { [8 x i8] }
%struct.decNumber = type { i32, i32, i8, [6 x i16] }
%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }

@BIN2DPD = dso_local local_unnamed_addr constant [1000 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 10, i16 11, i16 42, i16 43, i16 74, i16 75, i16 106, i16 107, i16 78, i16 79, i16 26, i16 27, i16 58, i16 59, i16 90, i16 91, i16 122, i16 123, i16 94, i16 95, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 138, i16 139, i16 170, i16 171, i16 202, i16 203, i16 234, i16 235, i16 206, i16 207, i16 154, i16 155, i16 186, i16 187, i16 218, i16 219, i16 250, i16 251, i16 222, i16 223, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 272, i16 273, i16 274, i16 275, i16 276, i16 277, i16 278, i16 279, i16 280, i16 281, i16 288, i16 289, i16 290, i16 291, i16 292, i16 293, i16 294, i16 295, i16 296, i16 297, i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 310, i16 311, i16 312, i16 313, i16 320, i16 321, i16 322, i16 323, i16 324, i16 325, i16 326, i16 327, i16 328, i16 329, i16 336, i16 337, i16 338, i16 339, i16 340, i16 341, i16 342, i16 343, i16 344, i16 345, i16 352, i16 353, i16 354, i16 355, i16 356, i16 357, i16 358, i16 359, i16 360, i16 361, i16 368, i16 369, i16 370, i16 371, i16 372, i16 373, i16 374, i16 375, i16 376, i16 377, i16 266, i16 267, i16 298, i16 299, i16 330, i16 331, i16 362, i16 363, i16 334, i16 335, i16 282, i16 283, i16 314, i16 315, i16 346, i16 347, i16 378, i16 379, i16 350, i16 351, i16 384, i16 385, i16 386, i16 387, i16 388, i16 389, i16 390, i16 391, i16 392, i16 393, i16 400, i16 401, i16 402, i16 403, i16 404, i16 405, i16 406, i16 407, i16 408, i16 409, i16 416, i16 417, i16 418, i16 419, i16 420, i16 421, i16 422, i16 423, i16 424, i16 425, i16 432, i16 433, i16 434, i16 435, i16 436, i16 437, i16 438, i16 439, i16 440, i16 441, i16 448, i16 449, i16 450, i16 451, i16 452, i16 453, i16 454, i16 455, i16 456, i16 457, i16 464, i16 465, i16 466, i16 467, i16 468, i16 469, i16 470, i16 471, i16 472, i16 473, i16 480, i16 481, i16 482, i16 483, i16 484, i16 485, i16 486, i16 487, i16 488, i16 489, i16 496, i16 497, i16 498, i16 499, i16 500, i16 501, i16 502, i16 503, i16 504, i16 505, i16 394, i16 395, i16 426, i16 427, i16 458, i16 459, i16 490, i16 491, i16 462, i16 463, i16 410, i16 411, i16 442, i16 443, i16 474, i16 475, i16 506, i16 507, i16 478, i16 479, i16 512, i16 513, i16 514, i16 515, i16 516, i16 517, i16 518, i16 519, i16 520, i16 521, i16 528, i16 529, i16 530, i16 531, i16 532, i16 533, i16 534, i16 535, i16 536, i16 537, i16 544, i16 545, i16 546, i16 547, i16 548, i16 549, i16 550, i16 551, i16 552, i16 553, i16 560, i16 561, i16 562, i16 563, i16 564, i16 565, i16 566, i16 567, i16 568, i16 569, i16 576, i16 577, i16 578, i16 579, i16 580, i16 581, i16 582, i16 583, i16 584, i16 585, i16 592, i16 593, i16 594, i16 595, i16 596, i16 597, i16 598, i16 599, i16 600, i16 601, i16 608, i16 609, i16 610, i16 611, i16 612, i16 613, i16 614, i16 615, i16 616, i16 617, i16 624, i16 625, i16 626, i16 627, i16 628, i16 629, i16 630, i16 631, i16 632, i16 633, i16 522, i16 523, i16 554, i16 555, i16 586, i16 587, i16 618, i16 619, i16 590, i16 591, i16 538, i16 539, i16 570, i16 571, i16 602, i16 603, i16 634, i16 635, i16 606, i16 607, i16 640, i16 641, i16 642, i16 643, i16 644, i16 645, i16 646, i16 647, i16 648, i16 649, i16 656, i16 657, i16 658, i16 659, i16 660, i16 661, i16 662, i16 663, i16 664, i16 665, i16 672, i16 673, i16 674, i16 675, i16 676, i16 677, i16 678, i16 679, i16 680, i16 681, i16 688, i16 689, i16 690, i16 691, i16 692, i16 693, i16 694, i16 695, i16 696, i16 697, i16 704, i16 705, i16 706, i16 707, i16 708, i16 709, i16 710, i16 711, i16 712, i16 713, i16 720, i16 721, i16 722, i16 723, i16 724, i16 725, i16 726, i16 727, i16 728, i16 729, i16 736, i16 737, i16 738, i16 739, i16 740, i16 741, i16 742, i16 743, i16 744, i16 745, i16 752, i16 753, i16 754, i16 755, i16 756, i16 757, i16 758, i16 759, i16 760, i16 761, i16 650, i16 651, i16 682, i16 683, i16 714, i16 715, i16 746, i16 747, i16 718, i16 719, i16 666, i16 667, i16 698, i16 699, i16 730, i16 731, i16 762, i16 763, i16 734, i16 735, i16 768, i16 769, i16 770, i16 771, i16 772, i16 773, i16 774, i16 775, i16 776, i16 777, i16 784, i16 785, i16 786, i16 787, i16 788, i16 789, i16 790, i16 791, i16 792, i16 793, i16 800, i16 801, i16 802, i16 803, i16 804, i16 805, i16 806, i16 807, i16 808, i16 809, i16 816, i16 817, i16 818, i16 819, i16 820, i16 821, i16 822, i16 823, i16 824, i16 825, i16 832, i16 833, i16 834, i16 835, i16 836, i16 837, i16 838, i16 839, i16 840, i16 841, i16 848, i16 849, i16 850, i16 851, i16 852, i16 853, i16 854, i16 855, i16 856, i16 857, i16 864, i16 865, i16 866, i16 867, i16 868, i16 869, i16 870, i16 871, i16 872, i16 873, i16 880, i16 881, i16 882, i16 883, i16 884, i16 885, i16 886, i16 887, i16 888, i16 889, i16 778, i16 779, i16 810, i16 811, i16 842, i16 843, i16 874, i16 875, i16 846, i16 847, i16 794, i16 795, i16 826, i16 827, i16 858, i16 859, i16 890, i16 891, i16 862, i16 863, i16 896, i16 897, i16 898, i16 899, i16 900, i16 901, i16 902, i16 903, i16 904, i16 905, i16 912, i16 913, i16 914, i16 915, i16 916, i16 917, i16 918, i16 919, i16 920, i16 921, i16 928, i16 929, i16 930, i16 931, i16 932, i16 933, i16 934, i16 935, i16 936, i16 937, i16 944, i16 945, i16 946, i16 947, i16 948, i16 949, i16 950, i16 951, i16 952, i16 953, i16 960, i16 961, i16 962, i16 963, i16 964, i16 965, i16 966, i16 967, i16 968, i16 969, i16 976, i16 977, i16 978, i16 979, i16 980, i16 981, i16 982, i16 983, i16 984, i16 985, i16 992, i16 993, i16 994, i16 995, i16 996, i16 997, i16 998, i16 999, i16 1000, i16 1001, i16 1008, i16 1009, i16 1010, i16 1011, i16 1012, i16 1013, i16 1014, i16 1015, i16 1016, i16 1017, i16 906, i16 907, i16 938, i16 939, i16 970, i16 971, i16 1002, i16 1003, i16 974, i16 975, i16 922, i16 923, i16 954, i16 955, i16 986, i16 987, i16 1018, i16 1019, i16 990, i16 991, i16 12, i16 13, i16 268, i16 269, i16 524, i16 525, i16 780, i16 781, i16 46, i16 47, i16 28, i16 29, i16 284, i16 285, i16 540, i16 541, i16 796, i16 797, i16 62, i16 63, i16 44, i16 45, i16 300, i16 301, i16 556, i16 557, i16 812, i16 813, i16 302, i16 303, i16 60, i16 61, i16 316, i16 317, i16 572, i16 573, i16 828, i16 829, i16 318, i16 319, i16 76, i16 77, i16 332, i16 333, i16 588, i16 589, i16 844, i16 845, i16 558, i16 559, i16 92, i16 93, i16 348, i16 349, i16 604, i16 605, i16 860, i16 861, i16 574, i16 575, i16 108, i16 109, i16 364, i16 365, i16 620, i16 621, i16 876, i16 877, i16 814, i16 815, i16 124, i16 125, i16 380, i16 381, i16 636, i16 637, i16 892, i16 893, i16 830, i16 831, i16 14, i16 15, i16 270, i16 271, i16 526, i16 527, i16 782, i16 783, i16 110, i16 111, i16 30, i16 31, i16 286, i16 287, i16 542, i16 543, i16 798, i16 799, i16 126, i16 127, i16 140, i16 141, i16 396, i16 397, i16 652, i16 653, i16 908, i16 909, i16 174, i16 175, i16 156, i16 157, i16 412, i16 413, i16 668, i16 669, i16 924, i16 925, i16 190, i16 191, i16 172, i16 173, i16 428, i16 429, i16 684, i16 685, i16 940, i16 941, i16 430, i16 431, i16 188, i16 189, i16 444, i16 445, i16 700, i16 701, i16 956, i16 957, i16 446, i16 447, i16 204, i16 205, i16 460, i16 461, i16 716, i16 717, i16 972, i16 973, i16 686, i16 687, i16 220, i16 221, i16 476, i16 477, i16 732, i16 733, i16 988, i16 989, i16 702, i16 703, i16 236, i16 237, i16 492, i16 493, i16 748, i16 749, i16 1004, i16 1005, i16 942, i16 943, i16 252, i16 253, i16 508, i16 509, i16 764, i16 765, i16 1020, i16 1021, i16 958, i16 959, i16 142, i16 143, i16 398, i16 399, i16 654, i16 655, i16 910, i16 911, i16 238, i16 239, i16 158, i16 159, i16 414, i16 415, i16 670, i16 671, i16 926, i16 927, i16 254, i16 255], align 16, !dbg !0
@DPD2BIN = dso_local local_unnamed_addr constant [1024 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 80, i16 81, i16 800, i16 801, i16 880, i16 881, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 90, i16 91, i16 810, i16 811, i16 890, i16 891, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 82, i16 83, i16 820, i16 821, i16 808, i16 809, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 92, i16 93, i16 830, i16 831, i16 818, i16 819, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 84, i16 85, i16 840, i16 841, i16 88, i16 89, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 94, i16 95, i16 850, i16 851, i16 98, i16 99, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 86, i16 87, i16 860, i16 861, i16 888, i16 889, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 96, i16 97, i16 870, i16 871, i16 898, i16 899, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 180, i16 181, i16 900, i16 901, i16 980, i16 981, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 190, i16 191, i16 910, i16 911, i16 990, i16 991, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 129, i16 182, i16 183, i16 920, i16 921, i16 908, i16 909, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 192, i16 193, i16 930, i16 931, i16 918, i16 919, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 184, i16 185, i16 940, i16 941, i16 188, i16 189, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 194, i16 195, i16 950, i16 951, i16 198, i16 199, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 186, i16 187, i16 960, i16 961, i16 988, i16 989, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 196, i16 197, i16 970, i16 971, i16 998, i16 999, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 280, i16 281, i16 802, i16 803, i16 882, i16 883, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 218, i16 219, i16 290, i16 291, i16 812, i16 813, i16 892, i16 893, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 282, i16 283, i16 822, i16 823, i16 828, i16 829, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239, i16 292, i16 293, i16 832, i16 833, i16 838, i16 839, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 284, i16 285, i16 842, i16 843, i16 288, i16 289, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 294, i16 295, i16 852, i16 853, i16 298, i16 299, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 267, i16 268, i16 269, i16 286, i16 287, i16 862, i16 863, i16 888, i16 889, i16 270, i16 271, i16 272, i16 273, i16 274, i16 275, i16 276, i16 277, i16 278, i16 279, i16 296, i16 297, i16 872, i16 873, i16 898, i16 899, i16 300, i16 301, i16 302, i16 303, i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 380, i16 381, i16 902, i16 903, i16 982, i16 983, i16 310, i16 311, i16 312, i16 313, i16 314, i16 315, i16 316, i16 317, i16 318, i16 319, i16 390, i16 391, i16 912, i16 913, i16 992, i16 993, i16 320, i16 321, i16 322, i16 323, i16 324, i16 325, i16 326, i16 327, i16 328, i16 329, i16 382, i16 383, i16 922, i16 923, i16 928, i16 929, i16 330, i16 331, i16 332, i16 333, i16 334, i16 335, i16 336, i16 337, i16 338, i16 339, i16 392, i16 393, i16 932, i16 933, i16 938, i16 939, i16 340, i16 341, i16 342, i16 343, i16 344, i16 345, i16 346, i16 347, i16 348, i16 349, i16 384, i16 385, i16 942, i16 943, i16 388, i16 389, i16 350, i16 351, i16 352, i16 353, i16 354, i16 355, i16 356, i16 357, i16 358, i16 359, i16 394, i16 395, i16 952, i16 953, i16 398, i16 399, i16 360, i16 361, i16 362, i16 363, i16 364, i16 365, i16 366, i16 367, i16 368, i16 369, i16 386, i16 387, i16 962, i16 963, i16 988, i16 989, i16 370, i16 371, i16 372, i16 373, i16 374, i16 375, i16 376, i16 377, i16 378, i16 379, i16 396, i16 397, i16 972, i16 973, i16 998, i16 999, i16 400, i16 401, i16 402, i16 403, i16 404, i16 405, i16 406, i16 407, i16 408, i16 409, i16 480, i16 481, i16 804, i16 805, i16 884, i16 885, i16 410, i16 411, i16 412, i16 413, i16 414, i16 415, i16 416, i16 417, i16 418, i16 419, i16 490, i16 491, i16 814, i16 815, i16 894, i16 895, i16 420, i16 421, i16 422, i16 423, i16 424, i16 425, i16 426, i16 427, i16 428, i16 429, i16 482, i16 483, i16 824, i16 825, i16 848, i16 849, i16 430, i16 431, i16 432, i16 433, i16 434, i16 435, i16 436, i16 437, i16 438, i16 439, i16 492, i16 493, i16 834, i16 835, i16 858, i16 859, i16 440, i16 441, i16 442, i16 443, i16 444, i16 445, i16 446, i16 447, i16 448, i16 449, i16 484, i16 485, i16 844, i16 845, i16 488, i16 489, i16 450, i16 451, i16 452, i16 453, i16 454, i16 455, i16 456, i16 457, i16 458, i16 459, i16 494, i16 495, i16 854, i16 855, i16 498, i16 499, i16 460, i16 461, i16 462, i16 463, i16 464, i16 465, i16 466, i16 467, i16 468, i16 469, i16 486, i16 487, i16 864, i16 865, i16 888, i16 889, i16 470, i16 471, i16 472, i16 473, i16 474, i16 475, i16 476, i16 477, i16 478, i16 479, i16 496, i16 497, i16 874, i16 875, i16 898, i16 899, i16 500, i16 501, i16 502, i16 503, i16 504, i16 505, i16 506, i16 507, i16 508, i16 509, i16 580, i16 581, i16 904, i16 905, i16 984, i16 985, i16 510, i16 511, i16 512, i16 513, i16 514, i16 515, i16 516, i16 517, i16 518, i16 519, i16 590, i16 591, i16 914, i16 915, i16 994, i16 995, i16 520, i16 521, i16 522, i16 523, i16 524, i16 525, i16 526, i16 527, i16 528, i16 529, i16 582, i16 583, i16 924, i16 925, i16 948, i16 949, i16 530, i16 531, i16 532, i16 533, i16 534, i16 535, i16 536, i16 537, i16 538, i16 539, i16 592, i16 593, i16 934, i16 935, i16 958, i16 959, i16 540, i16 541, i16 542, i16 543, i16 544, i16 545, i16 546, i16 547, i16 548, i16 549, i16 584, i16 585, i16 944, i16 945, i16 588, i16 589, i16 550, i16 551, i16 552, i16 553, i16 554, i16 555, i16 556, i16 557, i16 558, i16 559, i16 594, i16 595, i16 954, i16 955, i16 598, i16 599, i16 560, i16 561, i16 562, i16 563, i16 564, i16 565, i16 566, i16 567, i16 568, i16 569, i16 586, i16 587, i16 964, i16 965, i16 988, i16 989, i16 570, i16 571, i16 572, i16 573, i16 574, i16 575, i16 576, i16 577, i16 578, i16 579, i16 596, i16 597, i16 974, i16 975, i16 998, i16 999, i16 600, i16 601, i16 602, i16 603, i16 604, i16 605, i16 606, i16 607, i16 608, i16 609, i16 680, i16 681, i16 806, i16 807, i16 886, i16 887, i16 610, i16 611, i16 612, i16 613, i16 614, i16 615, i16 616, i16 617, i16 618, i16 619, i16 690, i16 691, i16 816, i16 817, i16 896, i16 897, i16 620, i16 621, i16 622, i16 623, i16 624, i16 625, i16 626, i16 627, i16 628, i16 629, i16 682, i16 683, i16 826, i16 827, i16 868, i16 869, i16 630, i16 631, i16 632, i16 633, i16 634, i16 635, i16 636, i16 637, i16 638, i16 639, i16 692, i16 693, i16 836, i16 837, i16 878, i16 879, i16 640, i16 641, i16 642, i16 643, i16 644, i16 645, i16 646, i16 647, i16 648, i16 649, i16 684, i16 685, i16 846, i16 847, i16 688, i16 689, i16 650, i16 651, i16 652, i16 653, i16 654, i16 655, i16 656, i16 657, i16 658, i16 659, i16 694, i16 695, i16 856, i16 857, i16 698, i16 699, i16 660, i16 661, i16 662, i16 663, i16 664, i16 665, i16 666, i16 667, i16 668, i16 669, i16 686, i16 687, i16 866, i16 867, i16 888, i16 889, i16 670, i16 671, i16 672, i16 673, i16 674, i16 675, i16 676, i16 677, i16 678, i16 679, i16 696, i16 697, i16 876, i16 877, i16 898, i16 899, i16 700, i16 701, i16 702, i16 703, i16 704, i16 705, i16 706, i16 707, i16 708, i16 709, i16 780, i16 781, i16 906, i16 907, i16 986, i16 987, i16 710, i16 711, i16 712, i16 713, i16 714, i16 715, i16 716, i16 717, i16 718, i16 719, i16 790, i16 791, i16 916, i16 917, i16 996, i16 997, i16 720, i16 721, i16 722, i16 723, i16 724, i16 725, i16 726, i16 727, i16 728, i16 729, i16 782, i16 783, i16 926, i16 927, i16 968, i16 969, i16 730, i16 731, i16 732, i16 733, i16 734, i16 735, i16 736, i16 737, i16 738, i16 739, i16 792, i16 793, i16 936, i16 937, i16 978, i16 979, i16 740, i16 741, i16 742, i16 743, i16 744, i16 745, i16 746, i16 747, i16 748, i16 749, i16 784, i16 785, i16 946, i16 947, i16 788, i16 789, i16 750, i16 751, i16 752, i16 753, i16 754, i16 755, i16 756, i16 757, i16 758, i16 759, i16 794, i16 795, i16 956, i16 957, i16 798, i16 799, i16 760, i16 761, i16 762, i16 763, i16 764, i16 765, i16 766, i16 767, i16 768, i16 769, i16 786, i16 787, i16 966, i16 967, i16 988, i16 989, i16 770, i16 771, i16 772, i16 773, i16 774, i16 775, i16 776, i16 777, i16 778, i16 779, i16 796, i16 797, i16 976, i16 977, i16 998, i16 999], align 16, !dbg !37
@BIN2CHAR = dso_local constant [4001 x i8] c"\00000\01001\01002\01003\01004\01005\01006\01007\01008\01009\02010\02011\02012\02013\02014\02015\02016\02017\02018\02019\02020\02021\02022\02023\02024\02025\02026\02027\02028\02029\02030\02031\02032\02033\02034\02035\02036\02037\02038\02039\02040\02041\02042\02043\02044\02045\02046\02047\02048\02049\02050\02051\02052\02053\02054\02055\02056\02057\02058\02059\02060\02061\02062\02063\02064\02065\02066\02067\02068\02069\02070\02071\02072\02073\02074\02075\02076\02077\02078\02079\02080\02081\02082\02083\02084\02085\02086\02087\02088\02089\02090\02091\02092\02093\02094\02095\02096\02097\02098\02099\03100\03101\03102\03103\03104\03105\03106\03107\03108\03109\03110\03111\03112\03113\03114\03115\03116\03117\03118\03119\03120\03121\03122\03123\03124\03125\03126\03127\03128\03129\03130\03131\03132\03133\03134\03135\03136\03137\03138\03139\03140\03141\03142\03143\03144\03145\03146\03147\03148\03149\03150\03151\03152\03153\03154\03155\03156\03157\03158\03159\03160\03161\03162\03163\03164\03165\03166\03167\03168\03169\03170\03171\03172\03173\03174\03175\03176\03177\03178\03179\03180\03181\03182\03183\03184\03185\03186\03187\03188\03189\03190\03191\03192\03193\03194\03195\03196\03197\03198\03199\03200\03201\03202\03203\03204\03205\03206\03207\03208\03209\03210\03211\03212\03213\03214\03215\03216\03217\03218\03219\03220\03221\03222\03223\03224\03225\03226\03227\03228\03229\03230\03231\03232\03233\03234\03235\03236\03237\03238\03239\03240\03241\03242\03243\03244\03245\03246\03247\03248\03249\03250\03251\03252\03253\03254\03255\03256\03257\03258\03259\03260\03261\03262\03263\03264\03265\03266\03267\03268\03269\03270\03271\03272\03273\03274\03275\03276\03277\03278\03279\03280\03281\03282\03283\03284\03285\03286\03287\03288\03289\03290\03291\03292\03293\03294\03295\03296\03297\03298\03299\03300\03301\03302\03303\03304\03305\03306\03307\03308\03309\03310\03311\03312\03313\03314\03315\03316\03317\03318\03319\03320\03321\03322\03323\03324\03325\03326\03327\03328\03329\03330\03331\03332\03333\03334\03335\03336\03337\03338\03339\03340\03341\03342\03343\03344\03345\03346\03347\03348\03349\03350\03351\03352\03353\03354\03355\03356\03357\03358\03359\03360\03361\03362\03363\03364\03365\03366\03367\03368\03369\03370\03371\03372\03373\03374\03375\03376\03377\03378\03379\03380\03381\03382\03383\03384\03385\03386\03387\03388\03389\03390\03391\03392\03393\03394\03395\03396\03397\03398\03399\03400\03401\03402\03403\03404\03405\03406\03407\03408\03409\03410\03411\03412\03413\03414\03415\03416\03417\03418\03419\03420\03421\03422\03423\03424\03425\03426\03427\03428\03429\03430\03431\03432\03433\03434\03435\03436\03437\03438\03439\03440\03441\03442\03443\03444\03445\03446\03447\03448\03449\03450\03451\03452\03453\03454\03455\03456\03457\03458\03459\03460\03461\03462\03463\03464\03465\03466\03467\03468\03469\03470\03471\03472\03473\03474\03475\03476\03477\03478\03479\03480\03481\03482\03483\03484\03485\03486\03487\03488\03489\03490\03491\03492\03493\03494\03495\03496\03497\03498\03499\03500\03501\03502\03503\03504\03505\03506\03507\03508\03509\03510\03511\03512\03513\03514\03515\03516\03517\03518\03519\03520\03521\03522\03523\03524\03525\03526\03527\03528\03529\03530\03531\03532\03533\03534\03535\03536\03537\03538\03539\03540\03541\03542\03543\03544\03545\03546\03547\03548\03549\03550\03551\03552\03553\03554\03555\03556\03557\03558\03559\03560\03561\03562\03563\03564\03565\03566\03567\03568\03569\03570\03571\03572\03573\03574\03575\03576\03577\03578\03579\03580\03581\03582\03583\03584\03585\03586\03587\03588\03589\03590\03591\03592\03593\03594\03595\03596\03597\03598\03599\03600\03601\03602\03603\03604\03605\03606\03607\03608\03609\03610\03611\03612\03613\03614\03615\03616\03617\03618\03619\03620\03621\03622\03623\03624\03625\03626\03627\03628\03629\03630\03631\03632\03633\03634\03635\03636\03637\03638\03639\03640\03641\03642\03643\03644\03645\03646\03647\03648\03649\03650\03651\03652\03653\03654\03655\03656\03657\03658\03659\03660\03661\03662\03663\03664\03665\03666\03667\03668\03669\03670\03671\03672\03673\03674\03675\03676\03677\03678\03679\03680\03681\03682\03683\03684\03685\03686\03687\03688\03689\03690\03691\03692\03693\03694\03695\03696\03697\03698\03699\03700\03701\03702\03703\03704\03705\03706\03707\03708\03709\03710\03711\03712\03713\03714\03715\03716\03717\03718\03719\03720\03721\03722\03723\03724\03725\03726\03727\03728\03729\03730\03731\03732\03733\03734\03735\03736\03737\03738\03739\03740\03741\03742\03743\03744\03745\03746\03747\03748\03749\03750\03751\03752\03753\03754\03755\03756\03757\03758\03759\03760\03761\03762\03763\03764\03765\03766\03767\03768\03769\03770\03771\03772\03773\03774\03775\03776\03777\03778\03779\03780\03781\03782\03783\03784\03785\03786\03787\03788\03789\03790\03791\03792\03793\03794\03795\03796\03797\03798\03799\03800\03801\03802\03803\03804\03805\03806\03807\03808\03809\03810\03811\03812\03813\03814\03815\03816\03817\03818\03819\03820\03821\03822\03823\03824\03825\03826\03827\03828\03829\03830\03831\03832\03833\03834\03835\03836\03837\03838\03839\03840\03841\03842\03843\03844\03845\03846\03847\03848\03849\03850\03851\03852\03853\03854\03855\03856\03857\03858\03859\03860\03861\03862\03863\03864\03865\03866\03867\03868\03869\03870\03871\03872\03873\03874\03875\03876\03877\03878\03879\03880\03881\03882\03883\03884\03885\03886\03887\03888\03889\03890\03891\03892\03893\03894\03895\03896\03897\03898\03899\03900\03901\03902\03903\03904\03905\03906\03907\03908\03909\03910\03911\03912\03913\03914\03915\03916\03917\03918\03919\03920\03921\03922\03923\03924\03925\03926\03927\03928\03929\03930\03931\03932\03933\03934\03935\03936\03937\03938\03939\03940\03941\03942\03943\03944\03945\03946\03947\03948\03949\03950\03951\03952\03953\03954\03955\03956\03957\03958\03959\03960\03961\03962\03963\03964\03965\03966\03967\03968\03969\03970\03971\03972\03973\03974\03975\03976\03977\03978\03979\03980\03981\03982\03983\03984\03985\03986\03987\03988\03989\03990\03991\03992\03993\03994\03995\03996\03997\03998\03999\00", align 16, !dbg !44
@COMBMSD = dso_local local_unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 8, i32 9, i32 8, i32 9, i32 0, i32 1], align 16, !dbg !59
@COMBEXP = dso_local local_unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3], align 16, !dbg !53
@.str = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inity\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@d2utable = external dso_local local_unnamed_addr constant [50 x i8], align 16
@multies = internal unnamed_addr constant [5 x i32] [i32 131073, i32 26215, i32 5243, i32 1049, i32 210], align 16, !dbg !61
@DECPOWERS = external dso_local local_unnamed_addr constant [10 x i32], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !73 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !78, metadata !DIExpression()), !dbg !79
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !80
  %conv = trunc i64 %call to i32, !dbg !81
  ret i32 %conv, !dbg !82
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !83 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !88, metadata !DIExpression()), !dbg !89
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !90
  ret i64 %call, !dbg !91
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !92 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !97, metadata !DIExpression()), !dbg !98
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #7, !dbg !99
  ret i64 %call, !dbg !100
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !101 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !115, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i8* %__base, metadata !116, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !117, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i64 %__size, metadata !118, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !119, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i64 0, metadata !120, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !121, metadata !DIExpression()), !dbg !125
  br label %while.cond, !dbg !126

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !127
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !125
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !121, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !120, metadata !DIExpression()), !dbg !125
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !128
  br i1 %cmp, label %while.body, label %cleanup, !dbg !126

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !129
  %div = lshr i64 %add, 1, !dbg !131
  call void @llvm.dbg.value(metadata i64 %div, metadata !122, metadata !DIExpression()), !dbg !125
  %mul = mul i64 %div, %__size, !dbg !132
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !133
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !123, metadata !DIExpression()), !dbg !125
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #7, !dbg !134
  call void @llvm.dbg.value(metadata i32 %call, metadata !124, metadata !DIExpression()), !dbg !125
  %cmp1 = icmp slt i32 %call, 0, !dbg !135
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !137

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !138
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !140

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !141
  call void @llvm.dbg.value(metadata i64 %add4, metadata !120, metadata !DIExpression()), !dbg !125
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !125
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !125
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !121, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !120, metadata !DIExpression()), !dbg !125
  br label %while.cond, !dbg !126, !llvm.loop !142

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !125
  ret i8* %retval.0, !dbg !144
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !145 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !151, metadata !DIExpression()), !dbg !152
  %call = tail call double @strtod(i8* %__nptr, i8** null) #7, !dbg !153
  ret double %call, !dbg !154
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal64* @__dpd64FromNumber(%struct.decimal64* %d64, %struct.decNumber* %dn, %struct.decContext* %set) local_unnamed_addr #4 !dbg !155 {
entry:
  %dw = alloca %struct.decNumber, align 4
  %dc = alloca %struct.decContext, align 4
  %uiwork = alloca i32, align 4
  %targar = alloca i64, align 8
  %tmpcast = bitcast i64* %targar to [2 x i32]*
  %dpd = alloca [6 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !192, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !193, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !194, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 0, metadata !195, metadata !DIExpression()), !dbg !218
  %0 = bitcast %struct.decNumber* %dw to i8*, !dbg !219
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !219
  %1 = bitcast %struct.decContext* %dc to i8*, !dbg !220
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #8, !dbg !220
  %2 = bitcast i32* %uiwork to i8*, !dbg !221
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !221
  %3 = bitcast i64* %targar to i8*, !dbg !222
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !222
  call void @llvm.dbg.declare(metadata [2 x i32]* %tmpcast, metadata !202, metadata !DIExpression()), !dbg !223
  store i64 0, i64* %targar, align 8, !dbg !223
  %exponent = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 1, !dbg !224
  %4 = load i32, i32* %exponent, align 4, !dbg !224
  %digits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 0, !dbg !225
  %5 = load i32, i32* %digits, align 4, !dbg !225
  %add = add nsw i32 %4, %5, !dbg !226
  call void @llvm.dbg.value(metadata i32 %add, metadata !196, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !218
  %cmp = icmp sgt i32 %5, 16, !dbg !227
  %add.off = add i32 %add, 382, !dbg !229
  %6 = icmp ugt i32 %add.off, 767, !dbg !229
  %7 = or i1 %6, %cmp, !dbg !229
  br i1 %7, label %if.then, label %entry.if.end_crit_edge, !dbg !229

entry.if.end_crit_edge:                           ; preds = %entry
  %bits11.phi.trans.insert = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !230
  %.pre = load i8, i8* %bits11.phi.trans.insert, align 4, !dbg !231
  br label %if.end, !dbg !229

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !198, metadata !DIExpression(DW_OP_deref)), !dbg !218
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 64) #7, !dbg !232
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !234
  %8 = load i32, i32* %round, align 4, !dbg !234
  %round5 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 3, !dbg !235
  store i32 %8, i32* %round5, align 4, !dbg !236
  call void @llvm.dbg.value(metadata %struct.decNumber* %dw, metadata !197, metadata !DIExpression(DW_OP_deref)), !dbg !218
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !198, metadata !DIExpression(DW_OP_deref)), !dbg !218
  %call6 = call %struct.decNumber* @decNumberPlus(%struct.decNumber* nonnull %dw, %struct.decNumber* %dn, %struct.decContext* nonnull %dc) #7, !dbg !237
  %bits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !238
  %9 = load i8, i8* %bits, align 4, !dbg !238
  %10 = and i8 %9, -128, !dbg !239
  %bits7 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dw, i64 0, i32 2, !dbg !240
  %11 = load i8, i8* %bits7, align 4, !dbg !241
  %or4 = or i8 %11, %10, !dbg !241
  store i8 %or4, i8* %bits7, align 4, !dbg !241
  %status10 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 5, !dbg !242
  %12 = load i32, i32* %status10, align 4, !dbg !242
  call void @llvm.dbg.value(metadata i32 %12, metadata !195, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata %struct.decNumber* %dw, metadata !193, metadata !DIExpression()), !dbg !218
  br label %if.end, !dbg !243

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %13 = phi i8 [ %or4, %if.then ], [ %.pre, %entry.if.end_crit_edge ], !dbg !231
  %status.0 = phi i32 [ %12, %if.then ], [ 0, %entry.if.end_crit_edge ], !dbg !218
  %dn.addr.0 = phi %struct.decNumber* [ %dw, %if.then ], [ %dn, %entry.if.end_crit_edge ]
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn.addr.0, metadata !193, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !195, metadata !DIExpression()), !dbg !218
  %bits11 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 2, !dbg !231
  %14 = and i8 %13, 112, !dbg !244
  %tobool = icmp eq i8 %14, 0, !dbg !244
  br i1 %tobool, label %if.else45, label %if.then14, !dbg !245

if.then14:                                        ; preds = %if.end
  %15 = and i8 %13, 64, !dbg !246
  %tobool18 = icmp eq i8 %15, 0, !dbg !246
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !249

if.then19:                                        ; preds = %if.then14
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, !dbg !250
  store i32 2013265920, i32* %arrayidx, align 4, !dbg !251
  br label %if.end154, !dbg !250

if.else:                                          ; preds = %if.then14
  %arraydecay = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 3, i64 0, !dbg !252
  %16 = load i16, i16* %arraydecay, align 2, !dbg !252
  %cmp21 = icmp eq i16 %16, 0, !dbg !255
  br i1 %cmp21, label %lor.lhs.false23, label %if.else.land.lhs.true_crit_edge, !dbg !256

if.else.land.lhs.true_crit_edge:                  ; preds = %if.else
  %digits27.phi.trans.insert = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 0, !dbg !257
  %.pre5 = load i32, i32* %digits27.phi.trans.insert, align 4, !dbg !258
  br label %land.lhs.true, !dbg !256

lor.lhs.false23:                                  ; preds = %if.else
  %digits24 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 0, !dbg !259
  %17 = load i32, i32* %digits24, align 4, !dbg !259
  %cmp25 = icmp sgt i32 %17, 1, !dbg !260
  br i1 %cmp25, label %land.lhs.true, label %if.end32, !dbg !261

land.lhs.true:                                    ; preds = %if.else.land.lhs.true_crit_edge, %lor.lhs.false23
  %18 = phi i32 [ %.pre5, %if.else.land.lhs.true_crit_edge ], [ %17, %lor.lhs.false23 ], !dbg !258
  %cmp28 = icmp slt i32 %18, 16, !dbg !262
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !263

if.then30:                                        ; preds = %land.lhs.true
  %arraydecay31 = bitcast i64* %targar to i32*, !dbg !264
  call void @decDigitsToDPD(%struct.decNumber* %dn.addr.0, i32* nonnull %arraydecay31, i32 0) #9, !dbg !266
  %.pre6 = load i8, i8* %bits11, align 4, !dbg !267
  br label %if.end32, !dbg !269

if.end32:                                         ; preds = %if.then30, %land.lhs.true, %lor.lhs.false23
  %19 = phi i8 [ %.pre6, %if.then30 ], [ %13, %land.lhs.true ], [ %13, %lor.lhs.false23 ], !dbg !267
  %20 = and i8 %19, 32, !dbg !270
  %tobool36 = icmp eq i8 %20, 0, !dbg !270
  %arrayidx38 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, !dbg !271
  %21 = load i32, i32* %arrayidx38, align 4, !dbg !271
  br i1 %tobool36, label %if.else40, label %if.then37, !dbg !272

if.then37:                                        ; preds = %if.end32
  %or39 = or i32 %21, 2080374784, !dbg !273
  store i32 %or39, i32* %arrayidx38, align 4, !dbg !273
  br label %if.end154, !dbg !274

if.else40:                                        ; preds = %if.end32
  %or42 = or i32 %21, 2113929216, !dbg !275
  store i32 %or42, i32* %arrayidx38, align 4, !dbg !275
  br label %if.end154

if.else45:                                        ; preds = %if.end
  %arraydecay47 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 3, i64 0, !dbg !276
  %22 = load i16, i16* %arraydecay47, align 2, !dbg !276
  %cmp49 = icmp eq i16 %22, 0, !dbg !276
  br i1 %cmp49, label %land.lhs.true51, label %if.else77, !dbg !276

land.lhs.true51:                                  ; preds = %if.else45
  %digits52 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 0, !dbg !276
  %23 = load i32, i32* %digits52, align 4, !dbg !276
  %cmp53 = icmp eq i32 %23, 1, !dbg !276
  br i1 %cmp53, label %land.lhs.true55, label %if.else77, !dbg !276

land.lhs.true55:                                  ; preds = %land.lhs.true51
  br i1 true, label %if.then61, label %land.lhs.true55.if.else77_crit_edge, !dbg !277

land.lhs.true55.if.else77_crit_edge:              ; preds = %land.lhs.true55
  br label %if.else77, !dbg !277

if.then61:                                        ; preds = %land.lhs.true55
  %exponent62 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 1, !dbg !278
  %24 = load i32, i32* %exponent62, align 4, !dbg !278
  %cmp63 = icmp slt i32 %24, -398, !dbg !281
  br i1 %cmp63, label %if.then65, label %if.else67, !dbg !282

if.then65:                                        ; preds = %if.then61
  call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()), !dbg !218
  %or66 = or i32 %status.0, 1024, !dbg !283
  call void @llvm.dbg.value(metadata i32 %or66, metadata !195, metadata !DIExpression()), !dbg !218
  br label %if.end75, !dbg !285

if.else67:                                        ; preds = %if.then61
  %add69 = add nsw i32 %24, 398, !dbg !286
  call void @llvm.dbg.value(metadata i32 %add69, metadata !200, metadata !DIExpression()), !dbg !218
  %cmp70 = icmp ugt i32 %add69, 767, !dbg !288
  %or73 = or i32 %status.0, 1024, !dbg !290
  %spec.select = select i1 %cmp70, i32 767, i32 %add69, !dbg !292
  %spec.select2 = select i1 %cmp70, i32 %or73, i32 %status.0, !dbg !292
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !195, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !200, metadata !DIExpression()), !dbg !218
  br label %if.end75

if.end75:                                         ; preds = %if.else67, %if.then65
  %exp.1 = phi i32 [ 0, %if.then65 ], [ %spec.select, %if.else67 ], !dbg !293
  %status.2 = phi i32 [ %or66, %if.then65 ], [ %spec.select2, %if.else67 ], !dbg !293
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !195, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 %exp.1, metadata !200, metadata !DIExpression()), !dbg !218
  %shr = lshr i32 %exp.1, 5, !dbg !294
  %and76 = and i32 %shr, 24, !dbg !295
  call void @llvm.dbg.value(metadata i32 %and76, metadata !199, metadata !DIExpression()), !dbg !218
  br label %if.end146, !dbg !296

if.else77:                                        ; preds = %land.lhs.true55.if.else77_crit_edge, %land.lhs.true51, %if.else45
  call void @llvm.dbg.value(metadata i32 0, metadata !211, metadata !DIExpression()), !dbg !297
  %exponent78 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 1, !dbg !298
  %25 = load i32, i32* %exponent78, align 4, !dbg !298
  %add79 = add nsw i32 %25, 398, !dbg !299
  call void @llvm.dbg.value(metadata i32 %add79, metadata !200, metadata !DIExpression()), !dbg !218
  %cmp80 = icmp ugt i32 %add79, 767, !dbg !300
  %sub83 = add i32 %25, -369, !dbg !302
  %or84 = or i32 %status.0, 1024, !dbg !302
  %exp.2 = select i1 %cmp80, i32 767, i32 %add79, !dbg !302
  %status.3 = select i1 %cmp80, i32 %or84, i32 %status.0, !dbg !302
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !195, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 %exp.2, metadata !200, metadata !DIExpression()), !dbg !218
  %cmp863 = icmp eq i32 %sub83, 0, !dbg !303
  %not.cmp80 = xor i1 %cmp80, true, !dbg !303
  %cmp86 = or i1 %cmp863, %not.cmp80, !dbg !303
  br i1 %cmp86, label %if.then88, label %if.else126, !dbg !304

if.then88:                                        ; preds = %if.else77
  %26 = bitcast [6 x i32]* %dpd to i8*, !dbg !305
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %26) #8, !dbg !305
  call void @llvm.dbg.declare(metadata [6 x i32]* %dpd, metadata !212, metadata !DIExpression()), !dbg !306
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %26, i8 0, i64 24, i1 false), !dbg !306
  %digits89 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 0, !dbg !307
  %27 = load i32, i32* %digits89, align 4, !dbg !307
  call void @llvm.dbg.value(metadata i32 %27, metadata !217, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 0, metadata !216, metadata !DIExpression()), !dbg !308
  br label %for.cond, !dbg !309

for.cond:                                         ; preds = %for.body, %if.then88
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then88 ], !dbg !311
  %d.0 = phi i32 [ %sub99, %for.body ], [ %27, %if.then88 ], !dbg !308
  call void @llvm.dbg.value(metadata i32 %d.0, metadata !217, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !216, metadata !DIExpression()), !dbg !308
  %cmp90 = icmp sgt i32 %d.0, 0, !dbg !312
  br i1 %cmp90, label %for.body, label %for.end, !dbg !314

for.body:                                         ; preds = %for.cond
  %arrayidx93 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 3, i64 %indvars.iv, !dbg !315
  %28 = load i16, i16* %arrayidx93, align 2, !dbg !315
  %idxprom94 = zext i16 %28 to i64, !dbg !316
  %arrayidx95 = getelementptr inbounds [1000 x i16], [1000 x i16]* @BIN2DPD, i64 0, i64 %idxprom94, !dbg !316
  %29 = load i16, i16* %arrayidx95, align 2, !dbg !316
  %conv96 = zext i16 %29 to i32, !dbg !316
  %arrayidx98 = getelementptr inbounds [6 x i32], [6 x i32]* %dpd, i64 0, i64 %indvars.iv, !dbg !317
  store i32 %conv96, i32* %arrayidx98, align 4, !dbg !318
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !319
  call void @llvm.dbg.value(metadata i32 undef, metadata !216, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !308
  %sub99 = add nsw i32 %d.0, -3, !dbg !320
  call void @llvm.dbg.value(metadata i32 %sub99, metadata !217, metadata !DIExpression()), !dbg !308
  br label %for.cond, !dbg !321, !llvm.loop !322

for.end:                                          ; preds = %for.cond
  %arrayidx100 = getelementptr inbounds [6 x i32], [6 x i32]* %dpd, i64 0, i64 0, !dbg !324
  %30 = load i32, i32* %arrayidx100, align 16, !dbg !324
  %arrayidx101 = bitcast i64* %targar to i32*, !dbg !325
  %arrayidx102 = getelementptr inbounds [6 x i32], [6 x i32]* %dpd, i64 0, i64 1, !dbg !326
  %31 = load i32, i32* %arrayidx102, align 4, !dbg !326
  %shl = shl i32 %31, 10, !dbg !327
  %or104 = or i32 %30, %shl, !dbg !328
  %arrayidx105 = getelementptr inbounds [6 x i32], [6 x i32]* %dpd, i64 0, i64 2, !dbg !329
  %32 = load i32, i32* %arrayidx105, align 8, !dbg !329
  %shl106 = shl i32 %32, 20, !dbg !330
  %or108 = or i32 %or104, %shl106, !dbg !331
  store i32 %or108, i32* %arrayidx101, align 8, !dbg !331
  %cmp110 = icmp sgt i32 %27, 6, !dbg !332
  br i1 %cmp110, label %if.then112, label %if.end124, !dbg !334

if.then112:                                       ; preds = %for.end
  %arrayidx113 = getelementptr inbounds [6 x i32], [6 x i32]* %dpd, i64 0, i64 3, !dbg !335
  %33 = load i32, i32* %arrayidx113, align 4, !dbg !335
  %shl114 = shl i32 %33, 30, !dbg !337
  %or116 = or i32 %or108, %shl114, !dbg !338
  store i32 %or116, i32* %arrayidx101, align 8, !dbg !338
  %shr118 = lshr i32 %33, 2, !dbg !339
  %arrayidx119 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, !dbg !340
  %arrayidx120 = getelementptr inbounds [6 x i32], [6 x i32]* %dpd, i64 0, i64 4, !dbg !341
  %34 = load i32, i32* %arrayidx120, align 16, !dbg !341
  %shl121 = shl i32 %34, 8, !dbg !342
  %or123 = or i32 %shr118, %shl121, !dbg !343
  store i32 %or123, i32* %arrayidx119, align 4, !dbg !343
  br label %if.end124, !dbg !344

if.end124:                                        ; preds = %if.then112, %for.end
  %arrayidx125 = getelementptr inbounds [6 x i32], [6 x i32]* %dpd, i64 0, i64 5, !dbg !345
  %35 = load i32, i32* %arrayidx125, align 4, !dbg !345
  call void @llvm.dbg.value(metadata i32 %35, metadata !206, metadata !DIExpression()), !dbg !297
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %26) #8, !dbg !346
  br label %if.end132, !dbg !347

if.else126:                                       ; preds = %if.else77
  %arraydecay127 = bitcast i64* %targar to i32*, !dbg !348
  call void @decDigitsToDPD(%struct.decNumber* %dn.addr.0, i32* nonnull %arraydecay127, i32 %sub83) #9, !dbg !350
  %arrayidx128 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, !dbg !351
  %36 = load i32, i32* %arrayidx128, align 4, !dbg !351
  %shr129 = lshr i32 %36, 18, !dbg !352
  call void @llvm.dbg.value(metadata i32 %shr129, metadata !206, metadata !DIExpression()), !dbg !297
  %and131 = and i32 %36, 262143, !dbg !353
  store i32 %and131, i32* %arrayidx128, align 4, !dbg !353
  br label %if.end132

if.end132:                                        ; preds = %if.else126, %if.end124
  %msd.0 = phi i32 [ %35, %if.end124 ], [ %shr129, %if.else126 ], !dbg !354
  call void @llvm.dbg.value(metadata i32 %msd.0, metadata !206, metadata !DIExpression()), !dbg !297
  %cmp133 = icmp ugt i32 %msd.0, 7, !dbg !355
  br i1 %cmp133, label %if.then135, label %if.else141, !dbg !357

if.then135:                                       ; preds = %if.end132
  %shr136 = lshr i32 %exp.2, 7, !dbg !358
  %and137 = and i32 %shr136, 6, !dbg !359
  %and139 = and i32 %msd.0, 1, !dbg !360
  %or138 = or i32 %and137, %and139, !dbg !361
  %or140 = or i32 %or138, 24, !dbg !361
  call void @llvm.dbg.value(metadata i32 %or140, metadata !199, metadata !DIExpression()), !dbg !218
  br label %if.end146, !dbg !362

if.else141:                                       ; preds = %if.end132
  %shr142 = lshr i32 %exp.2, 5, !dbg !363
  %and143 = and i32 %shr142, 24, !dbg !364
  %or144 = or i32 %and143, %msd.0, !dbg !365
  call void @llvm.dbg.value(metadata i32 %or144, metadata !199, metadata !DIExpression()), !dbg !218
  br label %if.end146

if.end146:                                        ; preds = %if.then135, %if.else141, %if.end75
  %exp.3 = phi i32 [ %exp.1, %if.end75 ], [ %exp.2, %if.else141 ], [ %exp.2, %if.then135 ], !dbg !366
  %comb.1 = phi i32 [ %and76, %if.end75 ], [ %or144, %if.else141 ], [ %or140, %if.then135 ], !dbg !366
  %status.4 = phi i32 [ %status.2, %if.end75 ], [ %status.3, %if.else141 ], [ %status.3, %if.then135 ], !dbg !366
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !195, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 %comb.1, metadata !199, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 %exp.3, metadata !200, metadata !DIExpression()), !dbg !218
  %shl147 = shl i32 %comb.1, 26, !dbg !367
  %arrayidx148 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, !dbg !368
  %37 = load i32, i32* %arrayidx148, align 4, !dbg !369
  %or149 = or i32 %37, %shl147, !dbg !369
  %and150 = shl i32 %exp.3, 18, !dbg !370
  %shl151 = and i32 %and150, 66846720, !dbg !370
  %or153 = or i32 %or149, %shl151, !dbg !371
  store i32 %or153, i32* %arrayidx148, align 4, !dbg !371
  %.pre7 = load i8, i8* %bits11, align 4, !dbg !372
  br label %if.end154

if.end154:                                        ; preds = %if.then19, %if.else40, %if.then37, %if.end146
  %38 = phi i32 [ %or153, %if.end146 ], [ %or39, %if.then37 ], [ %or42, %if.else40 ], [ 2013265920, %if.then19 ]
  %39 = phi i8 [ %.pre7, %if.end146 ], [ %19, %if.then37 ], [ %19, %if.else40 ], [ %13, %if.then19 ], !dbg !372
  %status.5 = phi i32 [ %status.4, %if.end146 ], [ %status.0, %if.then37 ], [ %status.0, %if.else40 ], [ %status.0, %if.then19 ], !dbg !218
  call void @llvm.dbg.value(metadata i32 %status.5, metadata !195, metadata !DIExpression()), !dbg !218
  %tobool158 = icmp slt i8 %39, 0, !dbg !374
  br i1 %tobool158, label %if.then159, label %if.end162, !dbg !375

if.then159:                                       ; preds = %if.end154
  %arrayidx160 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, !dbg !376
  %or161 = or i32 %38, -2147483648, !dbg !377
  store i32 %or161, i32* %arrayidx160, align 4, !dbg !377
  br label %if.end162, !dbg !376

if.end162:                                        ; preds = %if.then159, %if.end154
  %arrayidx163 = bitcast i64* %targar to i32*, !dbg !378
  %40 = load i32, i32* %arrayidx163, align 8, !dbg !378
  call void @llvm.dbg.value(metadata i32 %40, metadata !201, metadata !DIExpression()), !dbg !218
  store i32 %40, i32* %uiwork, align 4, !dbg !378
  %arraydecay164 = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 0, !dbg !378
  %call165 = call i8* @memcpy(i8* %arraydecay164, i8* nonnull %2, i64 4) #7, !dbg !378
  call void @llvm.dbg.value(metadata i32 undef, metadata !201, metadata !DIExpression()), !dbg !218
  %arrayidx166 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, !dbg !381
  %41 = load i32, i32* %arrayidx166, align 4, !dbg !381
  call void @llvm.dbg.value(metadata i32 %41, metadata !201, metadata !DIExpression()), !dbg !218
  store i32 %41, i32* %uiwork, align 4, !dbg !381
  %add.ptr = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 4, !dbg !381
  %call169 = call i8* @memcpy(i8* nonnull %add.ptr, i8* nonnull %2, i64 4) #7, !dbg !381
  call void @llvm.dbg.value(metadata i32 undef, metadata !201, metadata !DIExpression()), !dbg !218
  %cmp170 = icmp eq i32 %status.5, 0, !dbg !382
  br i1 %cmp170, label %if.end174, label %if.then172, !dbg !384

if.then172:                                       ; preds = %if.end162
  %call173 = call %struct.decContext* @decContextSetStatus(%struct.decContext* %set, i32 %status.5) #7, !dbg !385
  br label %if.end174, !dbg !385

if.end174:                                        ; preds = %if.end162, %if.then172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !386
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !386
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #8, !dbg !386
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !386
  ret %struct.decimal64* %d64, !dbg !387
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local %struct.decContext* @decContextDefault(%struct.decContext*, i32) local_unnamed_addr #2

declare dso_local %struct.decNumber* @decNumberPlus(%struct.decNumber*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decDigitsToDPD(%struct.decNumber* %dn, i32* %targ, i32 %shift) local_unnamed_addr #4 !dbg !388 {
entry:
  %uar = alloca [12 x i16], align 16
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !393, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32* %targ, metadata !394, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 %shift, metadata !395, metadata !DIExpression()), !dbg !423
  %digits1 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 0, !dbg !424
  %0 = load i32, i32* %digits1, align 4, !dbg !424
  call void @llvm.dbg.value(metadata i32 %0, metadata !398, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32* %targ, metadata !401, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 0, metadata !402, metadata !DIExpression()), !dbg !423
  %arraydecay = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 3, i64 0, !dbg !425
  call void @llvm.dbg.value(metadata i16* %arraydecay, metadata !403, metadata !DIExpression()), !dbg !423
  %1 = bitcast [12 x i16]* %uar to i8*, !dbg !426
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !426
  call void @llvm.dbg.declare(metadata [12 x i16]* %uar, metadata !405, metadata !DIExpression()), !dbg !427
  %cmp = icmp eq i32 %shift, 0, !dbg !428
  br i1 %cmp, label %if.end119, label %if.then, !dbg !429

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !415, metadata !DIExpression()), !dbg !430
  %cmp4 = icmp slt i32 %0, 50, !dbg !431
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !431

cond.true:                                        ; preds = %if.then
  %idxprom = sext i32 %0 to i64, !dbg !431
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* @d2utable, i64 0, i64 %idxprom, !dbg !431
  %2 = load i8, i8* %arrayidx, align 1, !dbg !431
  %conv = zext i8 %2 to i32, !dbg !431
  br label %cond.end, !dbg !431

cond.false:                                       ; preds = %if.then
  %sub = add nsw i32 %0, 2, !dbg !431
  %div = sdiv i32 %sub, 3, !dbg !431
  br label %cond.end, !dbg !431

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %div, %cond.false ], !dbg !431
  %idx.ext = sext i32 %cond to i64, !dbg !432
  %add.ptr = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 3, i64 %idx.ext, !dbg !432
  %add.ptr5 = getelementptr inbounds i16, i16* %add.ptr, i64 -1, !dbg !433
  call void @llvm.dbg.value(metadata i16* %add.ptr5, metadata !409, metadata !DIExpression()), !dbg !430
  br i1 %cmp4, label %cond.true9, label %cond.false13, !dbg !434

cond.true9:                                       ; preds = %cond.end
  %idxprom10 = sext i32 %0 to i64, !dbg !434
  %arrayidx11 = getelementptr inbounds [50 x i8], [50 x i8]* @d2utable, i64 0, i64 %idxprom10, !dbg !434
  %3 = load i8, i8* %arrayidx11, align 1, !dbg !434
  %conv12 = zext i8 %3 to i32, !dbg !434
  br label %cond.end17, !dbg !434

cond.false13:                                     ; preds = %cond.end
  %sub15 = add nsw i32 %0, 2, !dbg !434
  %div16 = sdiv i32 %sub15, 3, !dbg !434
  br label %cond.end17, !dbg !434

cond.end17:                                       ; preds = %cond.false13, %cond.true9
  %cond18 = phi i32 [ %conv12, %cond.true9 ], [ %div16, %cond.false13 ], !dbg !434
  %idx.ext19 = sext i32 %cond18 to i64, !dbg !435
  %add.ptr20 = getelementptr inbounds [12 x i16], [12 x i16]* %uar, i64 0, i64 %idx.ext19, !dbg !435
  %add.ptr21 = getelementptr inbounds i16, i16* %add.ptr20, i64 -1, !dbg !436
  %cmp22 = icmp slt i32 %shift, 50, !dbg !437
  br i1 %cmp22, label %cond.true24, label %cond.false28, !dbg !437

cond.true24:                                      ; preds = %cond.end17
  %idxprom25 = sext i32 %shift to i64, !dbg !437
  %arrayidx26 = getelementptr inbounds [50 x i8], [50 x i8]* @d2utable, i64 0, i64 %idxprom25, !dbg !437
  %4 = load i8, i8* %arrayidx26, align 1, !dbg !437
  %conv27 = zext i8 %4 to i32, !dbg !437
  br label %cond.end32, !dbg !437

cond.false28:                                     ; preds = %cond.end17
  %sub30 = add nsw i32 %shift, 2, !dbg !437
  %div31 = sdiv i32 %sub30, 3, !dbg !437
  br label %cond.end32, !dbg !437

cond.end32:                                       ; preds = %cond.false28, %cond.true24
  %cond33 = phi i32 [ %conv27, %cond.true24 ], [ %div31, %cond.false28 ], !dbg !437
  %idx.ext34 = sext i32 %cond33 to i64, !dbg !438
  %add.ptr35 = getelementptr inbounds i16, i16* %add.ptr21, i64 %idx.ext34, !dbg !438
  call void @llvm.dbg.value(metadata i16* %add.ptr35, metadata !412, metadata !DIExpression()), !dbg !430
  br i1 %cmp22, label %cond.true38, label %cond.false42, !dbg !439

cond.true38:                                      ; preds = %cond.end32
  %idxprom39 = sext i32 %shift to i64, !dbg !439
  %arrayidx40 = getelementptr inbounds [50 x i8], [50 x i8]* @d2utable, i64 0, i64 %idxprom39, !dbg !439
  %5 = load i8, i8* %arrayidx40, align 1, !dbg !439
  %conv41 = zext i8 %5 to i32, !dbg !439
  br label %cond.end46, !dbg !439

cond.false42:                                     ; preds = %cond.end32
  %sub44 = add nsw i32 %shift, 2, !dbg !439
  %div45 = sdiv i32 %sub44, 3, !dbg !439
  br label %cond.end46, !dbg !439

cond.end46:                                       ; preds = %cond.false42, %cond.true38
  %cond47 = phi i32 [ %conv41, %cond.true38 ], [ %div45, %cond.false42 ], !dbg !439
  %6 = mul i32 %cond47, 3, !dbg !439
  %mul = add i32 %6, -3, !dbg !439
  %sub491 = sub i32 %mul, %shift, !dbg !440
  %sub50 = add i32 %sub491, 3, !dbg !440
  call void @llvm.dbg.value(metadata i32 %sub50, metadata !396, metadata !DIExpression()), !dbg !423
  %cmp51 = icmp eq i32 %sub50, 0, !dbg !441
  br i1 %cmp51, label %for.cond.preheader, label %if.else, !dbg !442

for.cond.preheader:                               ; preds = %cond.end46
  br label %for.cond, !dbg !443

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %source.0 = phi i16* [ %incdec.ptr, %for.body ], [ %add.ptr5, %for.cond.preheader ], !dbg !430
  %target.0 = phi i16* [ %incdec.ptr58, %for.body ], [ %add.ptr35, %for.cond.preheader ], !dbg !430
  call void @llvm.dbg.value(metadata i16* %target.0, metadata !412, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i16* %source.0, metadata !409, metadata !DIExpression()), !dbg !430
  %cmp56 = icmp ult i16* %source.0, %arraydecay, !dbg !446
  br i1 %cmp56, label %if.end107.loopexit, label %for.body, !dbg !443

for.body:                                         ; preds = %for.cond
  %7 = load i16, i16* %source.0, align 2, !dbg !448
  store i16 %7, i16* %target.0, align 2, !dbg !449
  %incdec.ptr = getelementptr inbounds i16, i16* %source.0, i64 -1, !dbg !450
  call void @llvm.dbg.value(metadata i16* %incdec.ptr, metadata !409, metadata !DIExpression()), !dbg !430
  %incdec.ptr58 = getelementptr inbounds i16, i16* %target.0, i64 -1, !dbg !451
  call void @llvm.dbg.value(metadata i16* %incdec.ptr58, metadata !412, metadata !DIExpression()), !dbg !430
  br label %for.cond, !dbg !452, !llvm.loop !453

if.else:                                          ; preds = %cond.end46
  %add60 = add nsw i32 %0, %shift, !dbg !455
  %cmp61 = icmp slt i32 %add60, 50, !dbg !455
  br i1 %cmp61, label %cond.true63, label %cond.false68, !dbg !455

cond.true63:                                      ; preds = %if.else
  %idxprom65 = sext i32 %add60 to i64, !dbg !455
  %arrayidx66 = getelementptr inbounds [50 x i8], [50 x i8]* @d2utable, i64 0, i64 %idxprom65, !dbg !455
  %8 = load i8, i8* %arrayidx66, align 1, !dbg !455
  %conv67 = zext i8 %8 to i32, !dbg !455
  br label %cond.end73, !dbg !455

cond.false68:                                     ; preds = %if.else
  %sub71 = add nsw i32 %add60, 2, !dbg !455
  %div72 = sdiv i32 %sub71, 3, !dbg !455
  br label %cond.end73, !dbg !455

cond.end73:                                       ; preds = %cond.false68, %cond.true63
  %cond74 = phi i32 [ %conv67, %cond.true63 ], [ %div72, %cond.false68 ], !dbg !455
  %idx.ext75 = sext i32 %cond74 to i64, !dbg !456
  %add.ptr76 = getelementptr inbounds [12 x i16], [12 x i16]* %uar, i64 0, i64 %idx.ext75, !dbg !456
  %add.ptr77 = getelementptr inbounds i16, i16* %add.ptr76, i64 -1, !dbg !457
  call void @llvm.dbg.value(metadata i16* %add.ptr77, metadata !414, metadata !DIExpression()), !dbg !430
  %idxprom85 = sext i32 %sub50 to i64, !dbg !458
  %arrayidx86 = getelementptr inbounds [5 x i32], [5 x i32]* @multies, i64 0, i64 %idxprom85, !dbg !458
  %arrayidx91 = getelementptr inbounds [10 x i32], [10 x i32]* @DECPOWERS, i64 0, i64 %idxprom85, !dbg !458
  %sub99 = sub i32 0, %sub491, !dbg !458
  %idxprom100 = sext i32 %sub99 to i64, !dbg !458
  %arrayidx101 = getelementptr inbounds [10 x i32], [10 x i32]* @DECPOWERS, i64 0, i64 %idxprom100, !dbg !458
  br label %for.cond78, !dbg !459

for.cond78:                                       ; preds = %if.end, %cond.end73
  %source.1 = phi i16* [ %add.ptr5, %cond.end73 ], [ %incdec.ptr104, %if.end ], !dbg !430
  %target.1 = phi i16* [ %add.ptr35, %cond.end73 ], [ %incdec.ptr105, %if.end ], !dbg !430
  %next.0 = phi i32 [ 0, %cond.end73 ], [ %mul102, %if.end ], !dbg !430
  call void @llvm.dbg.value(metadata i32 %next.0, metadata !415, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i16* %target.1, metadata !412, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i16* %source.1, metadata !409, metadata !DIExpression()), !dbg !430
  %cmp81 = icmp ult i16* %source.1, %arraydecay, !dbg !460
  br i1 %cmp81, label %if.end107.loopexit2, label %for.body83, !dbg !461

for.body83:                                       ; preds = %for.cond78
  %9 = load i16, i16* %source.1, align 2, !dbg !462
  %conv84 = zext i16 %9 to i32, !dbg !462
  %shr = lshr i32 %conv84, %sub50, !dbg !462
  %10 = load i32, i32* %arrayidx86, align 4, !dbg !462
  %mul87 = mul i32 %shr, %10, !dbg !462
  %shr88 = lshr i32 %mul87, 17, !dbg !462
  call void @llvm.dbg.value(metadata i32 %shr88, metadata !416, metadata !DIExpression()), !dbg !458
  %11 = load i32, i32* %arrayidx91, align 4, !dbg !463
  %mul92 = mul i32 %shr88, %11, !dbg !464
  %sub93 = sub i32 %conv84, %mul92, !dbg !465
  call void @llvm.dbg.value(metadata i32 %sub93, metadata !422, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i32 undef, metadata !415, metadata !DIExpression()), !dbg !430
  %cmp95 = icmp ugt i16* %target.1, %add.ptr77, !dbg !466
  br i1 %cmp95, label %if.end, label %if.then97, !dbg !468

if.then97:                                        ; preds = %for.body83
  %add94 = add i32 %next.0, %shr88, !dbg !469
  call void @llvm.dbg.value(metadata i32 %add94, metadata !415, metadata !DIExpression()), !dbg !430
  %conv98 = trunc i32 %add94 to i16, !dbg !470
  store i16 %conv98, i16* %target.1, align 2, !dbg !471
  br label %if.end, !dbg !472

if.end:                                           ; preds = %for.body83, %if.then97
  %12 = load i32, i32* %arrayidx101, align 4, !dbg !473
  %mul102 = mul i32 %sub93, %12, !dbg !474
  call void @llvm.dbg.value(metadata i32 %mul102, metadata !415, metadata !DIExpression()), !dbg !430
  %incdec.ptr104 = getelementptr inbounds i16, i16* %source.1, i64 -1, !dbg !475
  call void @llvm.dbg.value(metadata i16* %incdec.ptr104, metadata !409, metadata !DIExpression()), !dbg !430
  %incdec.ptr105 = getelementptr inbounds i16, i16* %target.1, i64 -1, !dbg !476
  call void @llvm.dbg.value(metadata i16* %incdec.ptr105, metadata !412, metadata !DIExpression()), !dbg !430
  br label %for.cond78, !dbg !477, !llvm.loop !478

if.end107.loopexit:                               ; preds = %for.cond
  %target.0.lcssa = phi i16* [ %target.0, %for.cond ], !dbg !430
  call void @llvm.dbg.value(metadata i16* %target.0.lcssa, metadata !412, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i16* %target.0.lcssa, metadata !412, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i16* %target.0.lcssa, metadata !412, metadata !DIExpression()), !dbg !430
  br label %if.end107, !dbg !480

if.end107.loopexit2:                              ; preds = %for.cond78
  %target.1.lcssa = phi i16* [ %target.1, %for.cond78 ], !dbg !430
  %next.0.lcssa = phi i32 [ %next.0, %for.cond78 ], !dbg !430
  call void @llvm.dbg.value(metadata i16* %target.1.lcssa, metadata !412, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 %next.0.lcssa, metadata !415, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i16* %target.1.lcssa, metadata !412, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 %next.0.lcssa, metadata !415, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i16* %target.1.lcssa, metadata !412, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 %next.0.lcssa, metadata !415, metadata !DIExpression()), !dbg !430
  br label %if.end107, !dbg !480

if.end107:                                        ; preds = %if.end107.loopexit2, %if.end107.loopexit
  %target.2 = phi i16* [ %target.0.lcssa, %if.end107.loopexit ], [ %target.1.lcssa, %if.end107.loopexit2 ], !dbg !481
  %next.1 = phi i32 [ 0, %if.end107.loopexit ], [ %next.0.lcssa, %if.end107.loopexit2 ], !dbg !482
  call void @llvm.dbg.value(metadata i32 %next.1, metadata !415, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i16* %target.2, metadata !412, metadata !DIExpression()), !dbg !430
  %arraydecay109 = getelementptr inbounds [12 x i16], [12 x i16]* %uar, i64 0, i64 0, !dbg !483
  br label %for.cond108, !dbg !480

for.cond108:                                      ; preds = %for.body112, %if.end107
  %target.3 = phi i16* [ %target.2, %if.end107 ], [ %incdec.ptr115, %for.body112 ], !dbg !430
  %next.2 = phi i32 [ %next.1, %if.end107 ], [ 0, %for.body112 ], !dbg !430
  call void @llvm.dbg.value(metadata i32 %next.2, metadata !415, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i16* %target.3, metadata !412, metadata !DIExpression()), !dbg !430
  %cmp110 = icmp ult i16* %target.3, %arraydecay109, !dbg !486
  br i1 %cmp110, label %for.end116, label %for.body112, !dbg !487

for.body112:                                      ; preds = %for.cond108
  %conv113 = trunc i32 %next.2 to i16, !dbg !488
  store i16 %conv113, i16* %target.3, align 2, !dbg !490
  call void @llvm.dbg.value(metadata i32 0, metadata !415, metadata !DIExpression()), !dbg !430
  %incdec.ptr115 = getelementptr inbounds i16, i16* %target.3, i64 -1, !dbg !491
  call void @llvm.dbg.value(metadata i16* %incdec.ptr115, metadata !412, metadata !DIExpression()), !dbg !430
  br label %for.cond108, !dbg !492, !llvm.loop !493

for.end116:                                       ; preds = %for.cond108
  %add117 = add nsw i32 %0, %shift, !dbg !495
  call void @llvm.dbg.value(metadata i32 %add117, metadata !398, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i16* %arraydecay109, metadata !403, metadata !DIExpression()), !dbg !423
  br label %if.end119, !dbg !496

if.end119:                                        ; preds = %entry, %for.end116
  %digits.0 = phi i32 [ %add117, %for.end116 ], [ %0, %entry ], !dbg !423
  %inu.0 = phi i16* [ %arraydecay109, %for.end116 ], [ %arraydecay, %entry ], !dbg !423
  call void @llvm.dbg.value(metadata i16* %inu.0, metadata !403, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 %digits.0, metadata !398, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 0, metadata !397, metadata !DIExpression()), !dbg !423
  br label %for.cond120, !dbg !497

for.cond120:                                      ; preds = %for.inc140, %if.end119
  %uout.0 = phi i32* [ %targ, %if.end119 ], [ %uout.1, %for.inc140 ], !dbg !499
  %uoff.0 = phi i32 [ 0, %if.end119 ], [ %uoff.1, %for.inc140 ], !dbg !423
  %digits.1 = phi i32 [ %digits.0, %if.end119 ], [ %sub125, %for.inc140 ], !dbg !423
  %inu.1 = phi i16* [ %inu.0, %if.end119 ], [ %incdec.ptr126, %for.inc140 ], !dbg !423
  call void @llvm.dbg.value(metadata i16* %inu.1, metadata !403, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 %digits.1, metadata !398, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 %uoff.0, metadata !402, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32* %uout.0, metadata !401, metadata !DIExpression()), !dbg !423
  %cmp121 = icmp sgt i32 %digits.1, 0, !dbg !500
  br i1 %cmp121, label %for.body123, label %for.end141, !dbg !502

for.body123:                                      ; preds = %for.cond120
  %13 = load i16, i16* %inu.1, align 2, !dbg !503
  call void @llvm.dbg.value(metadata i16 %13, metadata !400, metadata !DIExpression()), !dbg !423
  %sub125 = add nsw i32 %digits.1, -3, !dbg !505
  call void @llvm.dbg.value(metadata i32 %sub125, metadata !398, metadata !DIExpression()), !dbg !423
  %incdec.ptr126 = getelementptr inbounds i16, i16* %inu.1, i64 1, !dbg !506
  call void @llvm.dbg.value(metadata i16* %incdec.ptr126, metadata !403, metadata !DIExpression()), !dbg !423
  %idxprom127 = zext i16 %13 to i64, !dbg !507
  %arrayidx128 = getelementptr inbounds [1000 x i16], [1000 x i16]* @BIN2DPD, i64 0, i64 %idxprom127, !dbg !507
  %14 = load i16, i16* %arrayidx128, align 2, !dbg !507
  %conv129 = zext i16 %14 to i32, !dbg !507
  call void @llvm.dbg.value(metadata i32 %conv129, metadata !399, metadata !DIExpression()), !dbg !423
  %shl = shl i32 %conv129, %uoff.0, !dbg !508
  %15 = load i32, i32* %uout.0, align 4, !dbg !509
  %or = or i32 %15, %shl, !dbg !509
  store i32 %or, i32* %uout.0, align 4, !dbg !509
  %add130 = add i32 %uoff.0, 10, !dbg !510
  call void @llvm.dbg.value(metadata i32 %add130, metadata !402, metadata !DIExpression()), !dbg !423
  %cmp131 = icmp ult i32 %add130, 32, !dbg !511
  br i1 %cmp131, label %for.inc140, label %if.end134, !dbg !513

if.end134:                                        ; preds = %for.body123
  %incdec.ptr135 = getelementptr inbounds i32, i32* %uout.0, i64 1, !dbg !514
  call void @llvm.dbg.value(metadata i32* %incdec.ptr135, metadata !401, metadata !DIExpression()), !dbg !423
  %sub136 = add i32 %uoff.0, -22, !dbg !515
  call void @llvm.dbg.value(metadata i32 %sub136, metadata !402, metadata !DIExpression()), !dbg !423
  %sub137 = sub i32 32, %uoff.0, !dbg !516
  %shr138 = lshr i32 %conv129, %sub137, !dbg !517
  %16 = load i32, i32* %incdec.ptr135, align 4, !dbg !518
  %or139 = or i32 %16, %shr138, !dbg !518
  store i32 %or139, i32* %incdec.ptr135, align 4, !dbg !518
  br label %for.inc140, !dbg !519

for.inc140:                                       ; preds = %for.body123, %if.end134
  %uout.1 = phi i32* [ %incdec.ptr135, %if.end134 ], [ %uout.0, %for.body123 ], !dbg !423
  %uoff.1 = phi i32 [ %sub136, %if.end134 ], [ %add130, %for.body123 ], !dbg !520
  call void @llvm.dbg.value(metadata i32 %uoff.1, metadata !402, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32* %uout.1, metadata !401, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 undef, metadata !397, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !423
  br label %for.cond120, !dbg !521, !llvm.loop !522

for.end141:                                       ; preds = %for.cond120
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !524
  ret void, !dbg !524
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #5

declare dso_local %struct.decContext* @decContextSetStatus(%struct.decContext*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.decNumber* @__dpd64ToNumber(%struct.decimal64* %d64, %struct.decNumber* %dn) local_unnamed_addr #4 !dbg !525 {
entry:
  %uiwork = alloca i32, align 4
  %sourar = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !532, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !533, metadata !DIExpression()), !dbg !540
  %0 = bitcast i32* %uiwork to i8*, !dbg !541
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !541
  %1 = bitcast [2 x i32]* %sourar to i8*, !dbg !542
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !542
  call void @llvm.dbg.declare(metadata [2 x i32]* %sourar, metadata !539, metadata !DIExpression()), !dbg !543
  %arraydecay = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 0, !dbg !544
  %call = call i8* @memcpy(i8* nonnull %0, i8* %arraydecay, i64 4) #7, !dbg !544
  %2 = load i32, i32* %uiwork, align 4, !dbg !544
  call void @llvm.dbg.value(metadata i32 %2, metadata !538, metadata !DIExpression()), !dbg !540
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %sourar, i64 0, i64 0, !dbg !547
  store i32 %2, i32* %arrayidx, align 4, !dbg !548
  %add.ptr = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 4, !dbg !549
  %call3 = call i8* @memcpy(i8* nonnull %0, i8* nonnull %add.ptr, i64 4) #7, !dbg !549
  %3 = load i32, i32* %uiwork, align 4, !dbg !549
  call void @llvm.dbg.value(metadata i32 %3, metadata !538, metadata !DIExpression()), !dbg !540
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %sourar, i64 0, i64 1, !dbg !550
  store i32 %3, i32* %arrayidx4, align 4, !dbg !551
  %shr = lshr i32 %3, 26, !dbg !552
  %and = and i32 %shr, 31, !dbg !553
  call void @llvm.dbg.value(metadata i32 %and, metadata !536, metadata !DIExpression()), !dbg !540
  %call6 = call %struct.decNumber* @decNumberZero(%struct.decNumber* %dn) #7, !dbg !554
  %tobool = icmp slt i32 %3, 0, !dbg !555
  br i1 %tobool, label %if.then, label %if.end, !dbg !557

if.then:                                          ; preds = %entry
  %bits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !558
  store i8 -128, i8* %bits, align 4, !dbg !559
  br label %if.end, !dbg !560

if.end:                                           ; preds = %if.then, %entry
  %idxprom = zext i32 %and to i64, !dbg !561
  call void @llvm.dbg.value(metadata i32 undef, metadata !534, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i32 undef, metadata !535, metadata !DIExpression()), !dbg !540
  %4 = or i64 %idxprom, 1, !dbg !562
  %5 = icmp eq i64 %4, 31, !dbg !562
  br i1 %5, label %if.then12, label %if.else32, !dbg !564

if.then12:                                        ; preds = %if.end
  %6 = lshr i64 1073807617, %idxprom, !dbg !565
  %7 = and i64 %6, 1, !dbg !565
  %cmp13 = icmp eq i64 %7, 0, !dbg !565
  br i1 %cmp13, label %if.else, label %if.then14, !dbg !568

if.then14:                                        ; preds = %if.then12
  %bits15 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !569
  %8 = load i8, i8* %bits15, align 4, !dbg !571
  %9 = or i8 %8, 64, !dbg !571
  store i8 %9, i8* %bits15, align 4, !dbg !571
  br label %cleanup, !dbg !572

if.else:                                          ; preds = %if.then12
  %and18 = and i32 %3, 33554432, !dbg !573
  %tobool19 = icmp eq i32 %and18, 0, !dbg !573
  %bits21 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !575
  %10 = load i8, i8* %bits21, align 4, !dbg !575
  br i1 %tobool19, label %if.else25, label %if.then20, !dbg !576

if.then20:                                        ; preds = %if.else
  %11 = or i8 %10, 16, !dbg !577
  store i8 %11, i8* %bits21, align 4, !dbg !577
  br label %if.end36, !dbg !578

if.else25:                                        ; preds = %if.else
  %or28 = or i8 %10, 32, !dbg !579
  store i8 %or28, i8* %bits21, align 4, !dbg !579
  br label %if.end36

if.else32:                                        ; preds = %if.end
  %arrayidx9 = getelementptr inbounds [32 x i32], [32 x i32]* @COMBMSD, i64 0, i64 %idxprom, !dbg !561
  %12 = load i32, i32* %arrayidx9, align 4, !dbg !561
  call void @llvm.dbg.value(metadata i32 %12, metadata !534, metadata !DIExpression()), !dbg !540
  %arrayidx11 = getelementptr inbounds [32 x i32], [32 x i32]* @COMBEXP, i64 0, i64 %idxprom, !dbg !580
  %13 = load i32, i32* %arrayidx11, align 4, !dbg !580
  call void @llvm.dbg.value(metadata i32 %13, metadata !535, metadata !DIExpression()), !dbg !540
  %shl = shl i32 %13, 8, !dbg !581
  %shr34 = lshr i32 %3, 18, !dbg !583
  %and35 = and i32 %shr34, 255, !dbg !584
  %add = or i32 %shl, %and35, !dbg !585
  %sub = add i32 %add, -398, !dbg !586
  %exponent = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 1, !dbg !587
  store i32 %sub, i32* %exponent, align 4, !dbg !588
  br label %if.end36

if.end36:                                         ; preds = %if.else25, %if.then20, %if.else32
  %msd.0 = phi i32 [ %12, %if.else32 ], [ 0, %if.then20 ], [ 0, %if.else25 ], !dbg !540
  call void @llvm.dbg.value(metadata i32 %msd.0, metadata !534, metadata !DIExpression()), !dbg !540
  %and38 = and i32 %3, 262143, !dbg !589
  store i32 %and38, i32* %arrayidx4, align 4, !dbg !589
  %tobool39 = icmp eq i32 %msd.0, 0, !dbg !590
  br i1 %tobool39, label %if.else44, label %if.then40, !dbg !592

if.then40:                                        ; preds = %if.end36
  %shl41 = shl i32 %msd.0, 18, !dbg !593
  %or43 = or i32 %and38, %shl41, !dbg !595
  store i32 %or43, i32* %arrayidx4, align 4, !dbg !595
  call void @llvm.dbg.value(metadata i32 6, metadata !537, metadata !DIExpression()), !dbg !540
  br label %if.end65, !dbg !596

if.else44:                                        ; preds = %if.end36
  %tobool46 = icmp eq i32 %and38, 0, !dbg !597
  br i1 %tobool46, label %if.then47, label %if.else57, !dbg !600

if.then47:                                        ; preds = %if.else44
  %tobool49 = icmp eq i32 %2, 0, !dbg !601
  br i1 %tobool49, label %cleanup, label %if.end51, !dbg !604

if.end51:                                         ; preds = %if.then47
  call void @llvm.dbg.value(metadata i32 3, metadata !537, metadata !DIExpression()), !dbg !540
  %tobool54 = icmp ugt i32 %2, 1073741823, !dbg !605
  %spec.select = select i1 %tobool54, i32 4, i32 3, !dbg !607
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !537, metadata !DIExpression()), !dbg !540
  br label %if.end65, !dbg !608

if.else57:                                        ; preds = %if.else44
  call void @llvm.dbg.value(metadata i32 4, metadata !537, metadata !DIExpression()), !dbg !540
  %and59 = and i32 %3, 261888, !dbg !609
  %tobool60 = icmp eq i32 %and59, 0, !dbg !609
  %spec.select1 = select i1 %tobool60, i32 4, i32 5, !dbg !612
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !537, metadata !DIExpression()), !dbg !540
  br label %if.end65

if.end65:                                         ; preds = %if.end51, %if.else57, %if.then40
  %need.3 = phi i32 [ 6, %if.then40 ], [ %spec.select1, %if.else57 ], [ %spec.select, %if.end51 ], !dbg !613
  call void @llvm.dbg.value(metadata i32 %need.3, metadata !537, metadata !DIExpression()), !dbg !540
  call void @decDigitsFromDPD(%struct.decNumber* %dn, i32* nonnull %arrayidx, i32 %need.3) #9, !dbg !614
  br label %cleanup, !dbg !615

cleanup:                                          ; preds = %if.then47, %if.end65, %if.then14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !616
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !616
  ret %struct.decNumber* %dn, !dbg !616
}

declare dso_local %struct.decNumber* @decNumberZero(%struct.decNumber*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decDigitsFromDPD(%struct.decNumber* %dn, i32* %sour, i32 %declets) local_unnamed_addr #4 !dbg !617 {
entry:
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !622, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32* %sour, metadata !623, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32 %declets, metadata !624, metadata !DIExpression()), !dbg !631
  %arraydecay = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 3, i64 0, !dbg !632
  call void @llvm.dbg.value(metadata i16* %arraydecay, metadata !627, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i16* %arraydecay, metadata !628, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32* %sour, metadata !629, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32 0, metadata !630, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32 %declets, metadata !626, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !631
  br label %for.cond, !dbg !633

for.cond:                                         ; preds = %if.end6, %entry
  %last.0 = phi i16* [ %arraydecay, %entry ], [ %last.1, %if.end6 ], !dbg !635
  %uout.0 = phi i16* [ %arraydecay, %entry ], [ %incdec.ptr7, %if.end6 ], !dbg !631
  %n.0.in = phi i32 [ %declets, %entry ], [ %n.0, %if.end6 ]
  %uin.0 = phi i32* [ %sour, %entry ], [ %uin.1, %if.end6 ], !dbg !631
  %uoff.0 = phi i32 [ 0, %entry ], [ %uoff.1, %if.end6 ], !dbg !631
  %n.0 = add nsw i32 %n.0.in, -1, !dbg !636
  call void @llvm.dbg.value(metadata i32 %uoff.0, metadata !630, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32* %uin.0, metadata !629, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !626, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i16* %uout.0, metadata !627, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i16* %last.0, metadata !628, metadata !DIExpression()), !dbg !631
  %cmp = icmp sgt i32 %n.0.in, 0, !dbg !637
  br i1 %cmp, label %for.body, label %for.end, !dbg !639

for.body:                                         ; preds = %for.cond
  %0 = load i32, i32* %uin.0, align 4, !dbg !640
  %shr = lshr i32 %0, %uoff.0, !dbg !642
  call void @llvm.dbg.value(metadata i32 %shr, metadata !625, metadata !DIExpression()), !dbg !631
  %add = add i32 %uoff.0, 10, !dbg !643
  call void @llvm.dbg.value(metadata i32 %add, metadata !630, metadata !DIExpression()), !dbg !631
  %cmp1 = icmp ugt i32 %add, 32, !dbg !644
  br i1 %cmp1, label %if.then, label %if.end, !dbg !646

if.then:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i32, i32* %uin.0, i64 1, !dbg !647
  call void @llvm.dbg.value(metadata i32* %incdec.ptr, metadata !629, metadata !DIExpression()), !dbg !631
  %sub2 = add i32 %uoff.0, -22, !dbg !649
  call void @llvm.dbg.value(metadata i32 %sub2, metadata !630, metadata !DIExpression()), !dbg !631
  %1 = load i32, i32* %incdec.ptr, align 4, !dbg !650
  %sub3 = sub i32 32, %uoff.0, !dbg !651
  %shl = shl i32 %1, %sub3, !dbg !652
  %or = or i32 %shr, %shl, !dbg !653
  call void @llvm.dbg.value(metadata i32 %or, metadata !625, metadata !DIExpression()), !dbg !631
  br label %if.end, !dbg !654

if.end:                                           ; preds = %if.then, %for.body
  %dpd.0 = phi i32 [ %or, %if.then ], [ %shr, %for.body ], !dbg !655
  %uin.1 = phi i32* [ %incdec.ptr, %if.then ], [ %uin.0, %for.body ], !dbg !631
  %uoff.1 = phi i32 [ %sub2, %if.then ], [ %add, %for.body ], !dbg !655
  call void @llvm.dbg.value(metadata i32 %uoff.1, metadata !630, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32* %uin.1, metadata !629, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32 %dpd.0, metadata !625, metadata !DIExpression()), !dbg !631
  %and = and i32 %dpd.0, 1023, !dbg !656
  call void @llvm.dbg.value(metadata i32 %and, metadata !625, metadata !DIExpression()), !dbg !631
  %cmp4 = icmp eq i32 %and, 0, !dbg !657
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !659

if.then5:                                         ; preds = %if.end
  br label %if.end6, !dbg !660

if.else:                                          ; preds = %if.end
  %idxprom = zext i32 %and to i64, !dbg !661
  %arrayidx = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom, !dbg !661
  %2 = load i16, i16* %arrayidx, align 2, !dbg !661
  call void @llvm.dbg.value(metadata i16* %uout.0, metadata !628, metadata !DIExpression()), !dbg !631
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %storemerge = phi i16 [ %2, %if.else ], [ 0, %if.then5 ], !dbg !663
  %last.1 = phi i16* [ %uout.0, %if.else ], [ %last.0, %if.then5 ], !dbg !631
  store i16 %storemerge, i16* %uout.0, align 2, !dbg !663
  call void @llvm.dbg.value(metadata i16* %last.1, metadata !628, metadata !DIExpression()), !dbg !631
  %incdec.ptr7 = getelementptr inbounds i16, i16* %uout.0, i64 1, !dbg !664
  call void @llvm.dbg.value(metadata i16* %incdec.ptr7, metadata !627, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !626, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !631
  br label %for.cond, !dbg !665, !llvm.loop !666

for.end:                                          ; preds = %for.cond
  %last.0.lcssa = phi i16* [ %last.0, %for.cond ], !dbg !635
  call void @llvm.dbg.value(metadata i16* %last.0.lcssa, metadata !628, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i16* %last.0.lcssa, metadata !628, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i16* %last.0.lcssa, metadata !628, metadata !DIExpression()), !dbg !631
  %sub.ptr.lhs.cast = ptrtoint i16* %last.0.lcssa to i64, !dbg !668
  %sub.ptr.rhs.cast = ptrtoint i16* %arraydecay to i64, !dbg !668
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !668
  %3 = lshr exact i64 %sub.ptr.sub, 1, !dbg !668
  %4 = trunc i64 %3 to i32, !dbg !669
  %5 = mul i32 %4, 3, !dbg !669
  %conv = add i32 %5, 1, !dbg !669
  %digits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 0, !dbg !670
  store i32 %conv, i32* %digits, align 4, !dbg !671
  %6 = load i16, i16* %last.0.lcssa, align 2, !dbg !672
  %cmp12 = icmp ult i16 %6, 10, !dbg !674
  br i1 %cmp12, label %cleanup, label %if.end15, !dbg !675

if.end15:                                         ; preds = %for.end
  %inc = add i32 %5, 2, !dbg !676
  store i32 %inc, i32* %digits, align 4, !dbg !676
  %7 = load i16, i16* %last.0.lcssa, align 2, !dbg !677
  %cmp18 = icmp ult i16 %7, 100, !dbg !679
  br i1 %cmp18, label %cleanup, label %if.end21, !dbg !680

if.end21:                                         ; preds = %if.end15
  %inc23 = add i32 %5, 3, !dbg !681
  store i32 %inc23, i32* %digits, align 4, !dbg !681
  br label %cleanup, !dbg !682

cleanup:                                          ; preds = %if.end15, %for.end, %if.end21
  ret void, !dbg !683
}

; Function Attrs: nounwind uwtable
define dso_local i8* @__dpd64ToEngString(%struct.decimal64* %d64, i8* %string) local_unnamed_addr #4 !dbg !684 {
entry:
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !688, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* %string, metadata !689, metadata !DIExpression()), !dbg !691
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !692
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !692
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !690, metadata !DIExpression(DW_OP_deref)), !dbg !691
  %call = call %struct.decNumber* @__dpd64ToNumber(%struct.decimal64* %d64, %struct.decNumber* nonnull %dn) #9, !dbg !693
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !690, metadata !DIExpression(DW_OP_deref)), !dbg !691
  %call1 = call i8* @decNumberToEngString(%struct.decNumber* nonnull %dn, i8* %string) #7, !dbg !694
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !695
  ret i8* %string, !dbg !696
}

declare dso_local i8* @decNumberToEngString(%struct.decNumber*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @__dpd64ToString(%struct.decimal64* %d64, i8* %string) local_unnamed_addr #4 !dbg !697 {
entry:
  %uiwork = alloca i32, align 4
  %sourar = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !699, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %string, metadata !700, metadata !DIExpression()), !dbg !718
  %0 = bitcast i32* %uiwork to i8*, !dbg !719
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !719
  %1 = bitcast [2 x i32]* %sourar to i8*, !dbg !720
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !720
  call void @llvm.dbg.declare(metadata [2 x i32]* %sourar, metadata !714, metadata !DIExpression()), !dbg !721
  %arraydecay = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 0, !dbg !722
  %call = call i8* @memcpy(i8* nonnull %0, i8* %arraydecay, i64 4) #7, !dbg !722
  %2 = load i32, i32* %uiwork, align 4, !dbg !722
  call void @llvm.dbg.value(metadata i32 %2, metadata !713, metadata !DIExpression()), !dbg !718
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %sourar, i64 0, i64 0, !dbg !725
  store i32 %2, i32* %arrayidx, align 4, !dbg !726
  %add.ptr = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 4, !dbg !727
  %call3 = call i8* @memcpy(i8* nonnull %0, i8* nonnull %add.ptr, i64 4) #7, !dbg !727
  %3 = load i32, i32* %uiwork, align 4, !dbg !727
  call void @llvm.dbg.value(metadata i32 %3, metadata !713, metadata !DIExpression()), !dbg !718
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %sourar, i64 0, i64 1, !dbg !728
  store i32 %3, i32* %arrayidx4, align 4, !dbg !729
  call void @llvm.dbg.value(metadata i8* %string, metadata !705, metadata !DIExpression()), !dbg !718
  %cmp = icmp slt i32 %3, 0, !dbg !730
  br i1 %cmp, label %if.then, label %if.end, !dbg !732

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %string, i64 1, !dbg !733
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !705, metadata !DIExpression()), !dbg !718
  store i8 45, i8* %string, align 1, !dbg !734
  br label %if.end, !dbg !735

if.end:                                           ; preds = %if.then, %entry
  %c.0 = phi i8* [ %incdec.ptr, %if.then ], [ %string, %entry ], !dbg !718
  call void @llvm.dbg.value(metadata i8* %c.0, metadata !705, metadata !DIExpression()), !dbg !718
  %shr = lshr i32 %3, 26, !dbg !736
  %and = and i32 %shr, 31, !dbg !737
  call void @llvm.dbg.value(metadata i32 %and, metadata !703, metadata !DIExpression()), !dbg !718
  %idxprom = zext i32 %and to i64, !dbg !738
  call void @llvm.dbg.value(metadata i32 undef, metadata !701, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 undef, metadata !702, metadata !DIExpression()), !dbg !718
  %4 = or i64 %idxprom, 1, !dbg !739
  %5 = icmp eq i64 %4, 31, !dbg !739
  br i1 %5, label %if.then11, label %if.else, !dbg !741

if.then11:                                        ; preds = %if.end
  %6 = lshr i64 1073807617, %idxprom, !dbg !742
  %7 = and i64 %6, 1, !dbg !742
  %cmp12 = icmp eq i64 %7, 0, !dbg !742
  br i1 %cmp12, label %if.end17, label %if.then13, !dbg !745

if.then13:                                        ; preds = %if.then11
  %call14 = call i8* @strcpy(i8* %c.0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !746
  %add.ptr15 = getelementptr inbounds i8, i8* %c.0, i64 3, !dbg !748
  %call16 = call i8* @strcpy(i8* nonnull %add.ptr15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !749
  br label %cleanup, !dbg !750

if.end17:                                         ; preds = %if.then11
  %and19 = and i32 %3, 33554432, !dbg !751
  %tobool = icmp eq i32 %and19, 0, !dbg !751
  br i1 %tobool, label %if.end22, label %if.then20, !dbg !753

if.then20:                                        ; preds = %if.end17
  %incdec.ptr21 = getelementptr inbounds i8, i8* %c.0, i64 1, !dbg !754
  call void @llvm.dbg.value(metadata i8* %incdec.ptr21, metadata !705, metadata !DIExpression()), !dbg !718
  store i8 115, i8* %c.0, align 1, !dbg !755
  br label %if.end22, !dbg !756

if.end22:                                         ; preds = %if.end17, %if.then20
  %c.1 = phi i8* [ %incdec.ptr21, %if.then20 ], [ %c.0, %if.end17 ], !dbg !718
  call void @llvm.dbg.value(metadata i8* %c.1, metadata !705, metadata !DIExpression()), !dbg !718
  %call23 = call i8* @strcpy(i8* %c.1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !757
  %add.ptr24 = getelementptr inbounds i8, i8* %c.1, i64 3, !dbg !758
  call void @llvm.dbg.value(metadata i8* %add.ptr24, metadata !705, metadata !DIExpression()), !dbg !718
  %cmp26 = icmp eq i32 %2, 0, !dbg !759
  br i1 %cmp26, label %land.lhs.true, label %if.end35, !dbg !761

land.lhs.true:                                    ; preds = %if.end22
  %and28 = and i32 %3, 262143, !dbg !762
  %cmp29 = icmp eq i32 %and28, 0, !dbg !763
  br i1 %cmp29, label %cleanup, label %if.end35, !dbg !764

if.else:                                          ; preds = %if.end
  %arrayidx7 = getelementptr inbounds [32 x i32], [32 x i32]* @COMBMSD, i64 0, i64 %idxprom, !dbg !738
  %8 = load i32, i32* %arrayidx7, align 4, !dbg !738
  call void @llvm.dbg.value(metadata i32 %8, metadata !701, metadata !DIExpression()), !dbg !718
  %arrayidx9 = getelementptr inbounds [32 x i32], [32 x i32]* @COMBEXP, i64 0, i64 %idxprom, !dbg !765
  %9 = load i32, i32* %arrayidx9, align 4, !dbg !765
  call void @llvm.dbg.value(metadata i32 %9, metadata !702, metadata !DIExpression()), !dbg !718
  %shl = shl i32 %9, 8, !dbg !766
  %shr33 = lshr i32 %3, 18, !dbg !767
  %and34 = and i32 %shr33, 255, !dbg !768
  %add = or i32 %shl, %and34, !dbg !769
  %sub = add i32 %add, -398, !dbg !770
  call void @llvm.dbg.value(metadata i32 %sub, metadata !702, metadata !DIExpression()), !dbg !718
  br label %if.end35

if.end35:                                         ; preds = %if.end22, %land.lhs.true, %if.else
  %c.2 = phi i8* [ %c.0, %if.else ], [ %add.ptr24, %land.lhs.true ], [ %add.ptr24, %if.end22 ], !dbg !718
  %exp.0 = phi i32 [ %sub, %if.else ], [ 0, %land.lhs.true ], [ 0, %if.end22 ], !dbg !771
  %msd.0 = phi i32 [ %8, %if.else ], [ 0, %land.lhs.true ], [ 0, %if.end22 ], !dbg !718
  call void @llvm.dbg.value(metadata i32 %msd.0, metadata !701, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %exp.0, metadata !702, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %c.2, metadata !705, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %c.2, metadata !704, metadata !DIExpression()), !dbg !718
  %tobool36 = icmp eq i32 %msd.0, 0, !dbg !772
  br i1 %tobool36, label %if.end42, label %if.then37, !dbg !774

if.then37:                                        ; preds = %if.end35
  %10 = trunc i32 %msd.0 to i8, !dbg !775
  %conv40 = add i8 %10, 48, !dbg !775
  %incdec.ptr41 = getelementptr inbounds i8, i8* %c.2, i64 1, !dbg !776
  call void @llvm.dbg.value(metadata i8* %incdec.ptr41, metadata !705, metadata !DIExpression()), !dbg !718
  store i8 %conv40, i8* %c.2, align 1, !dbg !777
  %.pre = load i32, i32* %arrayidx4, align 4, !dbg !778
  br label %if.end42, !dbg !779

if.end42:                                         ; preds = %if.end35, %if.then37
  %11 = phi i32 [ %.pre, %if.then37 ], [ %3, %if.end35 ], !dbg !778
  %c.3 = phi i8* [ %incdec.ptr41, %if.then37 ], [ %c.2, %if.end35 ], !dbg !718
  call void @llvm.dbg.value(metadata i8* %c.3, metadata !705, metadata !DIExpression()), !dbg !718
  %shr44 = lshr i32 %11, 8, !dbg !780
  %and45 = and i32 %shr44, 1023, !dbg !781
  call void @llvm.dbg.value(metadata i32 %and45, metadata !710, metadata !DIExpression()), !dbg !718
  %idxprom46 = zext i32 %and45 to i64, !dbg !782
  %arrayidx47 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom46, !dbg !782
  %12 = load i16, i16* %arrayidx47, align 2, !dbg !782
  %conv48 = zext i16 %12 to i64, !dbg !782
  %mul = shl nuw nsw i64 %conv48, 2, !dbg !782
  %arrayidx50 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul, !dbg !782
  call void @llvm.dbg.value(metadata i8* %arrayidx50, metadata !706, metadata !DIExpression()), !dbg !718
  %cmp51 = icmp eq i8* %c.3, %c.2, !dbg !783
  br i1 %cmp51, label %if.else57, label %if.then53, !dbg !782

if.then53:                                        ; preds = %if.end42
  %add.ptr54 = getelementptr inbounds i8, i8* %arrayidx50, i64 1, !dbg !785
  %call55 = call i8* @memcpy(i8* %c.3, i8* nonnull %add.ptr54, i64 4) #7, !dbg !785
  %add.ptr56 = getelementptr inbounds i8, i8* %c.3, i64 3, !dbg !785
  call void @llvm.dbg.value(metadata i8* %add.ptr56, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end68, !dbg !785

if.else57:                                        ; preds = %if.end42
  %13 = load i8, i8* %arrayidx50, align 4, !dbg !787
  %tobool58 = icmp eq i8 %13, 0, !dbg !787
  br i1 %tobool58, label %if.end68, label %if.then59, !dbg !783

if.then59:                                        ; preds = %if.else57
  %add.ptr60 = getelementptr inbounds i8, i8* %arrayidx50, i64 4, !dbg !789
  %idx.ext = zext i8 %13 to i64, !dbg !789
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !789
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr60, i64 %idx.neg, !dbg !789
  %call63 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr62, i64 4) #7, !dbg !789
  %add.ptr66 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext, !dbg !789
  call void @llvm.dbg.value(metadata i8* %add.ptr66, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end68, !dbg !789

if.end68:                                         ; preds = %if.else57, %if.then59, %if.then53
  %c.5 = phi i8* [ %add.ptr56, %if.then53 ], [ %add.ptr66, %if.then59 ], [ %c.2, %if.else57 ], !dbg !791
  call void @llvm.dbg.value(metadata i8* %c.5, metadata !705, metadata !DIExpression()), !dbg !718
  %and70 = shl i32 %11, 2, !dbg !792
  %shl71 = and i32 %and70, 1020, !dbg !792
  %14 = load i32, i32* %arrayidx, align 4, !dbg !793
  %shr73 = lshr i32 %14, 30, !dbg !794
  %or = or i32 %shl71, %shr73, !dbg !795
  call void @llvm.dbg.value(metadata i32 %or, metadata !710, metadata !DIExpression()), !dbg !718
  %idxprom74 = zext i32 %or to i64, !dbg !796
  %arrayidx75 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom74, !dbg !796
  %15 = load i16, i16* %arrayidx75, align 2, !dbg !796
  %conv76 = zext i16 %15 to i64, !dbg !796
  %mul77 = shl nuw nsw i64 %conv76, 2, !dbg !796
  %arrayidx79 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul77, !dbg !796
  call void @llvm.dbg.value(metadata i8* %arrayidx79, metadata !706, metadata !DIExpression()), !dbg !718
  %cmp80 = icmp eq i8* %c.5, %c.2, !dbg !797
  br i1 %cmp80, label %if.else86, label %if.then82, !dbg !796

if.then82:                                        ; preds = %if.end68
  %add.ptr83 = getelementptr inbounds i8, i8* %arrayidx79, i64 1, !dbg !799
  %call84 = call i8* @memcpy(i8* %c.5, i8* nonnull %add.ptr83, i64 4) #7, !dbg !799
  %add.ptr85 = getelementptr inbounds i8, i8* %c.5, i64 3, !dbg !799
  call void @llvm.dbg.value(metadata i8* %add.ptr85, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end99, !dbg !799

if.else86:                                        ; preds = %if.end68
  %16 = load i8, i8* %arrayidx79, align 4, !dbg !801
  %tobool87 = icmp eq i8 %16, 0, !dbg !801
  br i1 %tobool87, label %if.end99, label %if.then88, !dbg !797

if.then88:                                        ; preds = %if.else86
  %add.ptr89 = getelementptr inbounds i8, i8* %arrayidx79, i64 4, !dbg !803
  %idx.ext91 = zext i8 %16 to i64, !dbg !803
  %idx.neg92 = sub nsw i64 0, %idx.ext91, !dbg !803
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr89, i64 %idx.neg92, !dbg !803
  %call94 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr93, i64 4) #7, !dbg !803
  %add.ptr97 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext91, !dbg !803
  call void @llvm.dbg.value(metadata i8* %add.ptr97, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end99, !dbg !803

if.end99:                                         ; preds = %if.else86, %if.then88, %if.then82
  %c.7 = phi i8* [ %add.ptr85, %if.then82 ], [ %add.ptr97, %if.then88 ], [ %c.2, %if.else86 ], !dbg !805
  call void @llvm.dbg.value(metadata i8* %c.7, metadata !705, metadata !DIExpression()), !dbg !718
  %shr101 = lshr i32 %14, 20, !dbg !806
  %and102 = and i32 %shr101, 1023, !dbg !807
  call void @llvm.dbg.value(metadata i32 %and102, metadata !710, metadata !DIExpression()), !dbg !718
  %idxprom103 = zext i32 %and102 to i64, !dbg !808
  %arrayidx104 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom103, !dbg !808
  %17 = load i16, i16* %arrayidx104, align 2, !dbg !808
  %conv105 = zext i16 %17 to i64, !dbg !808
  %mul106 = shl nuw nsw i64 %conv105, 2, !dbg !808
  %arrayidx108 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul106, !dbg !808
  call void @llvm.dbg.value(metadata i8* %arrayidx108, metadata !706, metadata !DIExpression()), !dbg !718
  %cmp109 = icmp eq i8* %c.7, %c.2, !dbg !809
  br i1 %cmp109, label %if.else115, label %if.then111, !dbg !808

if.then111:                                       ; preds = %if.end99
  %add.ptr112 = getelementptr inbounds i8, i8* %arrayidx108, i64 1, !dbg !811
  %call113 = call i8* @memcpy(i8* %c.7, i8* nonnull %add.ptr112, i64 4) #7, !dbg !811
  %add.ptr114 = getelementptr inbounds i8, i8* %c.7, i64 3, !dbg !811
  call void @llvm.dbg.value(metadata i8* %add.ptr114, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end128, !dbg !811

if.else115:                                       ; preds = %if.end99
  %18 = load i8, i8* %arrayidx108, align 4, !dbg !813
  %tobool116 = icmp eq i8 %18, 0, !dbg !813
  br i1 %tobool116, label %if.end128, label %if.then117, !dbg !809

if.then117:                                       ; preds = %if.else115
  %add.ptr118 = getelementptr inbounds i8, i8* %arrayidx108, i64 4, !dbg !815
  %idx.ext120 = zext i8 %18 to i64, !dbg !815
  %idx.neg121 = sub nsw i64 0, %idx.ext120, !dbg !815
  %add.ptr122 = getelementptr inbounds i8, i8* %add.ptr118, i64 %idx.neg121, !dbg !815
  %call123 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr122, i64 4) #7, !dbg !815
  %add.ptr126 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext120, !dbg !815
  call void @llvm.dbg.value(metadata i8* %add.ptr126, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end128, !dbg !815

if.end128:                                        ; preds = %if.else115, %if.then117, %if.then111
  %c.9 = phi i8* [ %add.ptr114, %if.then111 ], [ %add.ptr126, %if.then117 ], [ %c.2, %if.else115 ], !dbg !817
  call void @llvm.dbg.value(metadata i8* %c.9, metadata !705, metadata !DIExpression()), !dbg !718
  %shr130 = lshr i32 %14, 10, !dbg !818
  %and131 = and i32 %shr130, 1023, !dbg !819
  call void @llvm.dbg.value(metadata i32 %and131, metadata !710, metadata !DIExpression()), !dbg !718
  %idxprom132 = zext i32 %and131 to i64, !dbg !820
  %arrayidx133 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom132, !dbg !820
  %19 = load i16, i16* %arrayidx133, align 2, !dbg !820
  %conv134 = zext i16 %19 to i64, !dbg !820
  %mul135 = shl nuw nsw i64 %conv134, 2, !dbg !820
  %arrayidx137 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul135, !dbg !820
  call void @llvm.dbg.value(metadata i8* %arrayidx137, metadata !706, metadata !DIExpression()), !dbg !718
  %cmp138 = icmp eq i8* %c.9, %c.2, !dbg !821
  br i1 %cmp138, label %if.else144, label %if.then140, !dbg !820

if.then140:                                       ; preds = %if.end128
  %add.ptr141 = getelementptr inbounds i8, i8* %arrayidx137, i64 1, !dbg !823
  %call142 = call i8* @memcpy(i8* %c.9, i8* nonnull %add.ptr141, i64 4) #7, !dbg !823
  %add.ptr143 = getelementptr inbounds i8, i8* %c.9, i64 3, !dbg !823
  call void @llvm.dbg.value(metadata i8* %add.ptr143, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end157, !dbg !823

if.else144:                                       ; preds = %if.end128
  %20 = load i8, i8* %arrayidx137, align 4, !dbg !825
  %tobool145 = icmp eq i8 %20, 0, !dbg !825
  br i1 %tobool145, label %if.end157, label %if.then146, !dbg !821

if.then146:                                       ; preds = %if.else144
  %add.ptr147 = getelementptr inbounds i8, i8* %arrayidx137, i64 4, !dbg !827
  %idx.ext149 = zext i8 %20 to i64, !dbg !827
  %idx.neg150 = sub nsw i64 0, %idx.ext149, !dbg !827
  %add.ptr151 = getelementptr inbounds i8, i8* %add.ptr147, i64 %idx.neg150, !dbg !827
  %call152 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr151, i64 4) #7, !dbg !827
  %add.ptr155 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext149, !dbg !827
  call void @llvm.dbg.value(metadata i8* %add.ptr155, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end157, !dbg !827

if.end157:                                        ; preds = %if.else144, %if.then146, %if.then140
  %c.11 = phi i8* [ %add.ptr143, %if.then140 ], [ %add.ptr155, %if.then146 ], [ %c.2, %if.else144 ], !dbg !829
  call void @llvm.dbg.value(metadata i8* %c.11, metadata !705, metadata !DIExpression()), !dbg !718
  %and159 = and i32 %14, 1023, !dbg !830
  call void @llvm.dbg.value(metadata i32 %and159, metadata !710, metadata !DIExpression()), !dbg !718
  %idxprom160 = zext i32 %and159 to i64, !dbg !831
  %arrayidx161 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom160, !dbg !831
  %21 = load i16, i16* %arrayidx161, align 2, !dbg !831
  %conv162 = zext i16 %21 to i64, !dbg !831
  %mul163 = shl nuw nsw i64 %conv162, 2, !dbg !831
  %arrayidx165 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul163, !dbg !831
  call void @llvm.dbg.value(metadata i8* %arrayidx165, metadata !706, metadata !DIExpression()), !dbg !718
  %cmp166 = icmp eq i8* %c.11, %c.2, !dbg !832
  br i1 %cmp166, label %if.else172, label %if.then168, !dbg !831

if.then168:                                       ; preds = %if.end157
  %add.ptr169 = getelementptr inbounds i8, i8* %arrayidx165, i64 1, !dbg !834
  %call170 = call i8* @memcpy(i8* %c.11, i8* nonnull %add.ptr169, i64 4) #7, !dbg !834
  %add.ptr171 = getelementptr inbounds i8, i8* %c.11, i64 3, !dbg !834
  call void @llvm.dbg.value(metadata i8* %add.ptr171, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end185, !dbg !834

if.else172:                                       ; preds = %if.end157
  %22 = load i8, i8* %arrayidx165, align 4, !dbg !836
  %tobool173 = icmp eq i8 %22, 0, !dbg !836
  br i1 %tobool173, label %if.end185, label %if.then174, !dbg !832

if.then174:                                       ; preds = %if.else172
  %add.ptr175 = getelementptr inbounds i8, i8* %arrayidx165, i64 4, !dbg !838
  %idx.ext177 = zext i8 %22 to i64, !dbg !838
  %idx.neg178 = sub nsw i64 0, %idx.ext177, !dbg !838
  %add.ptr179 = getelementptr inbounds i8, i8* %add.ptr175, i64 %idx.neg178, !dbg !838
  %call180 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr179, i64 4) #7, !dbg !838
  %add.ptr183 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext177, !dbg !838
  call void @llvm.dbg.value(metadata i8* %add.ptr183, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end185, !dbg !838

if.end185:                                        ; preds = %if.else172, %if.then174, %if.then168
  %c.13 = phi i8* [ %add.ptr171, %if.then168 ], [ %add.ptr183, %if.then174 ], [ %c.2, %if.else172 ], !dbg !840
  call void @llvm.dbg.value(metadata i8* %c.13, metadata !705, metadata !DIExpression()), !dbg !718
  %cmp186 = icmp eq i8* %c.13, %c.2, !dbg !841
  br i1 %cmp186, label %if.then188, label %if.end190, !dbg !843

if.then188:                                       ; preds = %if.end185
  %incdec.ptr189 = getelementptr inbounds i8, i8* %c.2, i64 1, !dbg !844
  call void @llvm.dbg.value(metadata i8* %incdec.ptr189, metadata !705, metadata !DIExpression()), !dbg !718
  store i8 48, i8* %c.2, align 1, !dbg !845
  br label %if.end190, !dbg !846

if.end190:                                        ; preds = %if.then188, %if.end185
  %c.14 = phi i8* [ %incdec.ptr189, %if.then188 ], [ %c.13, %if.end185 ], !dbg !718
  call void @llvm.dbg.value(metadata i8* %c.14, metadata !705, metadata !DIExpression()), !dbg !718
  %cmp191 = icmp eq i32 %exp.0, 0, !dbg !847
  br i1 %cmp191, label %if.then193, label %if.end194, !dbg !849

if.then193:                                       ; preds = %if.end190
  store i8 0, i8* %c.14, align 1, !dbg !850
  br label %cleanup, !dbg !852

if.end194:                                        ; preds = %if.end190
  call void @llvm.dbg.value(metadata i32 0, metadata !712, metadata !DIExpression()), !dbg !718
  %sub.ptr.lhs.cast = ptrtoint i8* %c.14 to i64, !dbg !853
  %sub.ptr.rhs.cast = ptrtoint i8* %c.2 to i64, !dbg !853
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !853
  %23 = trunc i64 %sub.ptr.sub to i32, !dbg !854
  %conv197 = add i32 %exp.0, %23, !dbg !854
  call void @llvm.dbg.value(metadata i32 %conv197, metadata !711, metadata !DIExpression()), !dbg !718
  %cmp198 = icmp sgt i32 %exp.0, 0, !dbg !855
  %cmp200 = icmp slt i32 %conv197, -5, !dbg !857
  %or.cond = or i1 %cmp198, %cmp200, !dbg !858
  %sub203 = add nsw i32 %conv197, -1, !dbg !858
  %pre.0 = select i1 %or.cond, i32 1, i32 %conv197, !dbg !858
  %e.0 = select i1 %or.cond, i32 %sub203, i32 0, !dbg !858
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !712, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %pre.0, metadata !711, metadata !DIExpression()), !dbg !718
  %add.ptr205 = getelementptr inbounds i8, i8* %c.14, i64 -1, !dbg !859
  call void @llvm.dbg.value(metadata i8* %add.ptr205, metadata !708, metadata !DIExpression()), !dbg !718
  %cmp206 = icmp sgt i32 %pre.0, 0, !dbg !860
  br i1 %cmp206, label %if.then208, label %if.end244, !dbg !861

if.then208:                                       ; preds = %if.end194
  %idx.ext209 = sext i32 %pre.0 to i64, !dbg !862
  %add.ptr210 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext209, !dbg !862
  call void @llvm.dbg.value(metadata i8* %add.ptr210, metadata !715, metadata !DIExpression()), !dbg !863
  %cmp211 = icmp ult i8* %add.ptr210, %c.14, !dbg !864
  br i1 %cmp211, label %for.cond.preheader, label %if.end219, !dbg !866

for.cond.preheader:                               ; preds = %if.then208
  br label %for.cond, !dbg !867

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %t.0 = phi i8* [ %incdec.ptr217, %for.body ], [ %c.14, %for.cond.preheader ], !dbg !870
  %s.0 = phi i8* [ %incdec.ptr216, %for.body ], [ %add.ptr205, %for.cond.preheader ], !dbg !718
  call void @llvm.dbg.value(metadata i8* %s.0, metadata !708, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %t.0, metadata !709, metadata !DIExpression()), !dbg !718
  %cmp214 = icmp ult i8* %s.0, %add.ptr210, !dbg !871
  br i1 %cmp214, label %for.end, label %for.body, !dbg !867

for.body:                                         ; preds = %for.cond
  %24 = load i8, i8* %s.0, align 1, !dbg !873
  store i8 %24, i8* %t.0, align 1, !dbg !874
  %incdec.ptr216 = getelementptr inbounds i8, i8* %s.0, i64 -1, !dbg !875
  call void @llvm.dbg.value(metadata i8* %incdec.ptr216, metadata !708, metadata !DIExpression()), !dbg !718
  %incdec.ptr217 = getelementptr inbounds i8, i8* %t.0, i64 -1, !dbg !876
  call void @llvm.dbg.value(metadata i8* %incdec.ptr217, metadata !709, metadata !DIExpression()), !dbg !718
  br label %for.cond, !dbg !877, !llvm.loop !878

for.end:                                          ; preds = %for.cond
  %t.0.lcssa = phi i8* [ %t.0, %for.cond ], !dbg !870
  call void @llvm.dbg.value(metadata i8* %t.0.lcssa, metadata !709, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %t.0.lcssa, metadata !709, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %t.0.lcssa, metadata !709, metadata !DIExpression()), !dbg !718
  store i8 46, i8* %t.0.lcssa, align 1, !dbg !880
  %incdec.ptr218 = getelementptr inbounds i8, i8* %c.14, i64 1, !dbg !881
  call void @llvm.dbg.value(metadata i8* %incdec.ptr218, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end219, !dbg !882

if.end219:                                        ; preds = %for.end, %if.then208
  %c.15 = phi i8* [ %incdec.ptr218, %for.end ], [ %c.14, %if.then208 ], !dbg !718
  call void @llvm.dbg.value(metadata i8* %c.15, metadata !705, metadata !DIExpression()), !dbg !718
  %cmp220 = icmp eq i32 %e.0, 0, !dbg !883
  br i1 %cmp220, label %if.end243, label %if.then222, !dbg !885

if.then222:                                       ; preds = %if.end219
  %incdec.ptr223 = getelementptr inbounds i8, i8* %c.15, i64 1, !dbg !886
  call void @llvm.dbg.value(metadata i8* %incdec.ptr223, metadata !705, metadata !DIExpression()), !dbg !718
  store i8 69, i8* %c.15, align 1, !dbg !888
  %incdec.ptr224 = getelementptr inbounds i8, i8* %c.15, i64 2, !dbg !889
  call void @llvm.dbg.value(metadata i8* %incdec.ptr224, metadata !705, metadata !DIExpression()), !dbg !718
  store i8 43, i8* %incdec.ptr223, align 1, !dbg !890
  %cmp225 = icmp slt i32 %e.0, 0, !dbg !891
  br i1 %cmp225, label %if.then227, label %if.end230, !dbg !893

if.then227:                                       ; preds = %if.then222
  store i8 45, i8* %incdec.ptr223, align 1, !dbg !894
  %sub229 = sub nsw i32 0, %e.0, !dbg !896
  call void @llvm.dbg.value(metadata i32 %sub229, metadata !712, metadata !DIExpression()), !dbg !718
  br label %if.end230, !dbg !897

if.end230:                                        ; preds = %if.then227, %if.then222
  %e.1 = phi i32 [ %sub229, %if.then227 ], [ %e.0, %if.then222 ], !dbg !718
  call void @llvm.dbg.value(metadata i32 %e.1, metadata !712, metadata !DIExpression()), !dbg !718
  %mul231 = shl nsw i32 %e.1, 2, !dbg !898
  %idxprom232 = sext i32 %mul231 to i64, !dbg !899
  %arrayidx233 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %idxprom232, !dbg !899
  call void @llvm.dbg.value(metadata i8* %arrayidx233, metadata !706, metadata !DIExpression()), !dbg !718
  %add.ptr234 = getelementptr inbounds i8, i8* %arrayidx233, i64 4, !dbg !900
  %25 = load i8, i8* %arrayidx233, align 4, !dbg !901
  %idx.ext236 = zext i8 %25 to i64, !dbg !902
  %idx.neg237 = sub nsw i64 0, %idx.ext236, !dbg !902
  %add.ptr238 = getelementptr inbounds i8, i8* %add.ptr234, i64 %idx.neg237, !dbg !902
  %call239 = call i8* @memcpy(i8* nonnull %incdec.ptr224, i8* nonnull %add.ptr238, i64 4) #7, !dbg !903
  %add.ptr242 = getelementptr inbounds i8, i8* %incdec.ptr224, i64 %idx.ext236, !dbg !904
  call void @llvm.dbg.value(metadata i8* %add.ptr242, metadata !705, metadata !DIExpression()), !dbg !718
  br label %if.end243, !dbg !905

if.end243:                                        ; preds = %if.end219, %if.end230
  %c.16 = phi i8* [ %add.ptr242, %if.end230 ], [ %c.15, %if.end219 ], !dbg !863
  call void @llvm.dbg.value(metadata i8* %c.16, metadata !705, metadata !DIExpression()), !dbg !718
  store i8 0, i8* %c.16, align 1, !dbg !906
  br label %cleanup

if.end244:                                        ; preds = %if.end194
  %add.ptr245 = getelementptr inbounds i8, i8* %c.14, i64 1, !dbg !907
  %idx.ext246 = sext i32 %pre.0 to i64, !dbg !908
  %idx.neg247 = sub nsw i64 0, %idx.ext246, !dbg !908
  %add.ptr248 = getelementptr inbounds i8, i8* %add.ptr245, i64 %idx.neg247, !dbg !908
  call void @llvm.dbg.value(metadata i8* %add.ptr248, metadata !709, metadata !DIExpression()), !dbg !718
  %add.ptr249 = getelementptr inbounds i8, i8* %add.ptr248, i64 1, !dbg !909
  store i8 0, i8* %add.ptr249, align 1, !dbg !910
  br label %for.cond250, !dbg !911

for.cond250:                                      ; preds = %for.body253, %if.end244
  %t.1 = phi i8* [ %add.ptr248, %if.end244 ], [ %incdec.ptr256, %for.body253 ], !dbg !718
  %s.1 = phi i8* [ %add.ptr205, %if.end244 ], [ %incdec.ptr255, %for.body253 ], !dbg !718
  call void @llvm.dbg.value(metadata i8* %s.1, metadata !708, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %t.1, metadata !709, metadata !DIExpression()), !dbg !718
  %cmp251 = icmp ult i8* %s.1, %c.2, !dbg !912
  br i1 %cmp251, label %for.end257, label %for.body253, !dbg !915

for.body253:                                      ; preds = %for.cond250
  %26 = load i8, i8* %s.1, align 1, !dbg !916
  store i8 %26, i8* %t.1, align 1, !dbg !917
  %incdec.ptr255 = getelementptr inbounds i8, i8* %s.1, i64 -1, !dbg !918
  call void @llvm.dbg.value(metadata i8* %incdec.ptr255, metadata !708, metadata !DIExpression()), !dbg !718
  %incdec.ptr256 = getelementptr inbounds i8, i8* %t.1, i64 -1, !dbg !919
  call void @llvm.dbg.value(metadata i8* %incdec.ptr256, metadata !709, metadata !DIExpression()), !dbg !718
  br label %for.cond250, !dbg !920, !llvm.loop !921

for.end257:                                       ; preds = %for.cond250
  call void @llvm.dbg.value(metadata i8* %c.2, metadata !705, metadata !DIExpression()), !dbg !718
  %incdec.ptr258 = getelementptr inbounds i8, i8* %c.2, i64 1, !dbg !923
  call void @llvm.dbg.value(metadata i8* %incdec.ptr258, metadata !705, metadata !DIExpression()), !dbg !718
  store i8 48, i8* %c.2, align 1, !dbg !924
  %incdec.ptr259 = getelementptr inbounds i8, i8* %c.2, i64 2, !dbg !925
  call void @llvm.dbg.value(metadata i8* %incdec.ptr259, metadata !705, metadata !DIExpression()), !dbg !718
  store i8 46, i8* %incdec.ptr258, align 1, !dbg !926
  br label %for.cond260, !dbg !927

for.cond260:                                      ; preds = %for.body263, %for.end257
  %c.17 = phi i8* [ %incdec.ptr259, %for.end257 ], [ %incdec.ptr264, %for.body263 ], !dbg !718
  %pre.1 = phi i32 [ %pre.0, %for.end257 ], [ %inc, %for.body263 ], !dbg !718
  call void @llvm.dbg.value(metadata i32 %pre.1, metadata !711, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %c.17, metadata !705, metadata !DIExpression()), !dbg !718
  %cmp261 = icmp slt i32 %pre.1, 0, !dbg !928
  br i1 %cmp261, label %for.body263, label %cleanup.loopexit, !dbg !931

for.body263:                                      ; preds = %for.cond260
  %incdec.ptr264 = getelementptr inbounds i8, i8* %c.17, i64 1, !dbg !932
  call void @llvm.dbg.value(metadata i8* %incdec.ptr264, metadata !705, metadata !DIExpression()), !dbg !718
  store i8 48, i8* %c.17, align 1, !dbg !933
  %inc = add nsw i32 %pre.1, 1, !dbg !934
  call void @llvm.dbg.value(metadata i32 %inc, metadata !711, metadata !DIExpression()), !dbg !718
  br label %for.cond260, !dbg !935, !llvm.loop !936

cleanup.loopexit:                                 ; preds = %for.cond260
  br label %cleanup, !dbg !938

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true, %if.end243, %if.then193, %if.then13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !938
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !938
  ret i8* %string, !dbg !938
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal64* @__dpd64FromString(%struct.decimal64* %result, i8* %string, %struct.decContext* %set) local_unnamed_addr #4 !dbg !939 {
entry:
  %dc = alloca %struct.decContext, align 4
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal64* %result, metadata !943, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i8* %string, metadata !944, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !945, metadata !DIExpression()), !dbg !948
  %0 = bitcast %struct.decContext* %dc to i8*, !dbg !949
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #8, !dbg !949
  %1 = bitcast %struct.decNumber* %dn to i8*, !dbg !950
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !950
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !946, metadata !DIExpression(DW_OP_deref)), !dbg !948
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 64) #7, !dbg !951
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !952
  %2 = load i32, i32* %round, align 4, !dbg !952
  %round1 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 3, !dbg !953
  store i32 %2, i32* %round1, align 4, !dbg !954
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !946, metadata !DIExpression(DW_OP_deref)), !dbg !948
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !947, metadata !DIExpression(DW_OP_deref)), !dbg !948
  %call2 = call %struct.decNumber* @decNumberFromString(%struct.decNumber* nonnull %dn, i8* %string, %struct.decContext* nonnull %dc) #7, !dbg !955
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !946, metadata !DIExpression(DW_OP_deref)), !dbg !948
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !947, metadata !DIExpression(DW_OP_deref)), !dbg !948
  %call3 = call %struct.decimal64* @__dpd64FromNumber(%struct.decimal64* %result, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !956
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 5, !dbg !957
  %3 = load i32, i32* %status, align 4, !dbg !957
  %cmp = icmp eq i32 %3, 0, !dbg !959
  br i1 %cmp, label %if.end, label %if.then, !dbg !960

if.then:                                          ; preds = %entry
  %call5 = call %struct.decContext* @decContextSetStatus(%struct.decContext* %set, i32 %3) #7, !dbg !961
  br label %if.end, !dbg !963

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !964
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #8, !dbg !964
  ret %struct.decimal64* %result, !dbg !965
}

declare dso_local %struct.decNumber* @decNumberFromString(%struct.decNumber*, i8*, %struct.decContext*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @decimal64IsCanonical(%struct.decimal64* %d64) local_unnamed_addr #4 !dbg !966 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %canon = alloca %struct.decimal64, align 1
  %dc = alloca %struct.decContext, align 4
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !970, metadata !DIExpression()), !dbg !974
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !975
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !975
  %1 = getelementptr inbounds %struct.decimal64, %struct.decimal64* %canon, i64 0, i32 0, i64 0, !dbg !976
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !976
  %2 = bitcast %struct.decContext* %dc to i8*, !dbg !977
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #8, !dbg !977
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !973, metadata !DIExpression(DW_OP_deref)), !dbg !974
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 64) #7, !dbg !978
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !971, metadata !DIExpression(DW_OP_deref)), !dbg !974
  %call1 = call %struct.decNumber* @__dpd64ToNumber(%struct.decimal64* %d64, %struct.decNumber* nonnull %dn) #9, !dbg !979
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !971, metadata !DIExpression(DW_OP_deref)), !dbg !974
  call void @llvm.dbg.value(metadata %struct.decimal64* %canon, metadata !972, metadata !DIExpression(DW_OP_deref)), !dbg !974
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !973, metadata !DIExpression(DW_OP_deref)), !dbg !974
  %call2 = call %struct.decimal64* @__dpd64FromNumber(%struct.decimal64* nonnull %canon, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !980
  %3 = getelementptr inbounds %struct.decimal64, %struct.decimal64* %d64, i64 0, i32 0, i64 0, !dbg !981
  %call3 = call i32 @memcmp(i8* %3, i8* nonnull %1, i64 8) #10, !dbg !982
  %cmp = icmp eq i32 %call3, 0, !dbg !983
  %conv = zext i1 %cmp to i32, !dbg !983
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #8, !dbg !984
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !984
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !984
  ret i32 %conv, !dbg !985
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal64* @decimal64Canonical(%struct.decimal64* %result, %struct.decimal64* %d64) local_unnamed_addr #4 !dbg !986 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %dc = alloca %struct.decContext, align 4
  call void @llvm.dbg.value(metadata %struct.decimal64* %result, metadata !990, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !991, metadata !DIExpression()), !dbg !994
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !995
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !995
  %1 = bitcast %struct.decContext* %dc to i8*, !dbg !996
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #8, !dbg !996
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !993, metadata !DIExpression(DW_OP_deref)), !dbg !994
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 64) #7, !dbg !997
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !992, metadata !DIExpression(DW_OP_deref)), !dbg !994
  %call1 = call %struct.decNumber* @__dpd64ToNumber(%struct.decimal64* %d64, %struct.decNumber* nonnull %dn) #9, !dbg !998
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !992, metadata !DIExpression(DW_OP_deref)), !dbg !994
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !993, metadata !DIExpression(DW_OP_deref)), !dbg !994
  %call2 = call %struct.decimal64* @__dpd64FromNumber(%struct.decimal64* %result, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #8, !dbg !1000
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !1000
  ret %struct.decimal64* %result, !dbg !1001
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal64* @decimal64FromNumber(%struct.decimal64* %d64, %struct.decNumber* %dn, %struct.decContext* %set) local_unnamed_addr #4 !dbg !1002 {
entry:
  %u = alloca %union.anon, align 8
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !1004, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1005, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1006, metadata !DIExpression()), !dbg !1015
  %0 = bitcast %union.anon* %u to i8*, !dbg !1016
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1016
  %call = tail call %struct.decimal64* @__dpd64FromNumber(%struct.decimal64* %d64, %struct.decNumber* %dn, %struct.decContext* %set) #9, !dbg !1017
  %_Dec = getelementptr inbounds %union.anon, %union.anon* %u, i64 0, i32 0, !dbg !1018
  %1 = bitcast %struct.decimal64* %d64 to i64*, !dbg !1019
  %2 = load i64, i64* %1, align 1, !dbg !1019
  call void @__ieee_to_host_64(i64 %2, i64* nonnull %_Dec) #7, !dbg !1019
  call void @_dpd_to_bid64(i64* nonnull %_Dec, i64* nonnull %_Dec) #7, !dbg !1020
  %3 = load i64, i64* %_Dec, align 8, !dbg !1021
  %dec = bitcast %union.anon* %u to %struct.decimal64*, !dbg !1022
  call void @__host_to_ieee_64(i64 %3, %struct.decimal64* nonnull %dec) #7, !dbg !1023
  %4 = load i64, i64* %_Dec, align 8, !dbg !1024
  store i64 %4, i64* %1, align 1, !dbg !1024
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1025
  ret %struct.decimal64* %d64, !dbg !1026
}

declare dso_local void @__ieee_to_host_64(i64, i64*) local_unnamed_addr #2

declare dso_local void @_dpd_to_bid64(i64*, i64*) local_unnamed_addr #2

declare dso_local void @__host_to_ieee_64(i64, %struct.decimal64*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.decNumber* @decimal64ToNumber(%struct.decimal64* %bid64, %struct.decNumber* %dn) local_unnamed_addr #4 !dbg !1027 {
entry:
  %u = alloca %union.anon.0, align 8
  call void @llvm.dbg.value(metadata %struct.decimal64* %bid64, metadata !1029, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1030, metadata !DIExpression()), !dbg !1036
  %0 = bitcast %union.anon.0* %u to i8*, !dbg !1037
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1037
  %_Dec = getelementptr inbounds %union.anon.0, %union.anon.0* %u, i64 0, i32 0, !dbg !1038
  %1 = bitcast %struct.decimal64* %bid64 to i64*, !dbg !1039
  %2 = load i64, i64* %1, align 1, !dbg !1039
  call void @__ieee_to_host_64(i64 %2, i64* nonnull %_Dec) #7, !dbg !1039
  call void @_bid_to_dpd64(i64* nonnull %_Dec, i64* nonnull %_Dec) #7, !dbg !1040
  %3 = load i64, i64* %_Dec, align 8, !dbg !1041
  %dec = bitcast %union.anon.0* %u to %struct.decimal64*, !dbg !1042
  call void @__host_to_ieee_64(i64 %3, %struct.decimal64* nonnull %dec) #7, !dbg !1043
  %call = call %struct.decNumber* @__dpd64ToNumber(%struct.decimal64* nonnull %dec, %struct.decNumber* %dn) #9, !dbg !1044
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1045
  ret %struct.decNumber* %call, !dbg !1046
}

declare dso_local void @_bid_to_dpd64(i64*, i64*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @decimal64ToString(%struct.decimal64* %d64, i8* %string) local_unnamed_addr #4 !dbg !1047 {
entry:
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !1049, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i8* %string, metadata !1050, metadata !DIExpression()), !dbg !1052
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !1053
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !1053
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1051, metadata !DIExpression(DW_OP_deref)), !dbg !1052
  %call = call %struct.decNumber* @decimal64ToNumber(%struct.decimal64* %d64, %struct.decNumber* nonnull %dn) #9, !dbg !1054
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1051, metadata !DIExpression(DW_OP_deref)), !dbg !1052
  %call1 = call i8* @decNumberToString(%struct.decNumber* nonnull %dn, i8* %string) #7, !dbg !1055
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !1056
  ret i8* %string, !dbg !1057
}

declare dso_local i8* @decNumberToString(%struct.decNumber*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @decimal64ToEngString(%struct.decimal64* %d64, i8* %string) local_unnamed_addr #4 !dbg !1058 {
entry:
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal64* %d64, metadata !1060, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8* %string, metadata !1061, metadata !DIExpression()), !dbg !1063
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !1064
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !1064
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1062, metadata !DIExpression(DW_OP_deref)), !dbg !1063
  %call = call %struct.decNumber* @decimal64ToNumber(%struct.decimal64* %d64, %struct.decNumber* nonnull %dn) #9, !dbg !1065
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1062, metadata !DIExpression(DW_OP_deref)), !dbg !1063
  %call1 = call i8* @decNumberToEngString(%struct.decNumber* nonnull %dn, i8* %string) #7, !dbg !1066
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !1067
  ret i8* %string, !dbg !1068
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal64* @decimal64FromString(%struct.decimal64* %result, i8* %string, %struct.decContext* %set) local_unnamed_addr #4 !dbg !1069 {
entry:
  %dc = alloca %struct.decContext, align 4
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal64* %result, metadata !1071, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8* %string, metadata !1072, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !1073, metadata !DIExpression()), !dbg !1076
  %0 = bitcast %struct.decContext* %dc to i8*, !dbg !1077
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #8, !dbg !1077
  %1 = bitcast %struct.decNumber* %dn to i8*, !dbg !1078
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !1078
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !1074, metadata !DIExpression(DW_OP_deref)), !dbg !1076
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 64) #7, !dbg !1079
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !1080
  %2 = load i32, i32* %round, align 4, !dbg !1080
  %round1 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 3, !dbg !1081
  store i32 %2, i32* %round1, align 4, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !1074, metadata !DIExpression(DW_OP_deref)), !dbg !1076
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1075, metadata !DIExpression(DW_OP_deref)), !dbg !1076
  %call2 = call %struct.decNumber* @decNumberFromString(%struct.decNumber* nonnull %dn, i8* %string, %struct.decContext* nonnull %dc) #7, !dbg !1083
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !1074, metadata !DIExpression(DW_OP_deref)), !dbg !1076
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !1075, metadata !DIExpression(DW_OP_deref)), !dbg !1076
  %call3 = call %struct.decimal64* @decimal64FromNumber(%struct.decimal64* %result, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !1084
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 5, !dbg !1085
  %3 = load i32, i32* %status, align 4, !dbg !1085
  %cmp = icmp eq i32 %3, 0, !dbg !1087
  br i1 %cmp, label %if.end, label %if.then, !dbg !1088

if.then:                                          ; preds = %entry
  %call5 = call %struct.decContext* @decContextSetStatus(%struct.decContext* %set, i32 %3) #7, !dbg !1089
  br label %if.end, !dbg !1091

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !1092
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #8, !dbg !1092
  ret %struct.decimal64* %result, !dbg !1093
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!69, !70, !71}
!llvm.ident = !{!72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "BIN2DPD", scope: !2, file: !39, line: 346, type: !66, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !36, nameTableKind: None)
!3 = !DIFile(filename: "decimal64.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rounding", file: !6, line: 69, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./decContext.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "DEC_ROUND_CEILING", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "DEC_ROUND_UP", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "DEC_ROUND_HALF_UP", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "DEC_ROUND_HALF_EVEN", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "DEC_ROUND_HALF_DOWN", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "DEC_ROUND_DOWN", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "DEC_ROUND_FLOOR", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "DEC_ROUND_05UP", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "DEC_ROUND_MAX", value: 8, isUnsigned: true)
!18 = !{!19, !20, !23, !24, !26, !30, !22, !33}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 26, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 42, baseType: !7)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !31, line: 26, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !29, line: 41, baseType: !19)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !27, line: 25, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !29, line: 40, baseType: !35)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !{!0, !37, !44, !53, !59, !61}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "DPD2BIN", scope: !2, file: !39, line: 429, type: !40, isLocal: false, isDefinition: true)
!39 = !DIFile(filename: "./decDPD.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 16384, elements: !42)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!42 = !{!43}
!43 = !DISubrange(count: 1024)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "BIN2CHAR", scope: !2, file: !39, line: 774, type: !46, isLocal: false, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 32008, elements: !51)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !27, line: 24, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !29, line: 38, baseType: !50)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !{!52}
!52 = !DISubrange(count: 4001)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "COMBEXP", scope: !2, file: !3, line: 623, type: !55, isLocal: false, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1024, elements: !57)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!57 = !{!58}
!58 = !DISubrange(count: 32)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "COMBMSD", scope: !2, file: !3, line: 627, type: !55, isLocal: false, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "multies", scope: !2, file: !3, line: 658, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 160, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 5)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 16000, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1000)
!69 = !{i32 2, !"Dwarf Version", i32 4}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 4}
!72 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!73 = distinct !DISubprogram(name: "atoi", scope: !74, file: !74, line: 361, type: !75, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!74 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!75 = !DISubroutineType(types: !76)
!76 = !{!19, !24}
!77 = !{!78}
!78 = !DILocalVariable(name: "__nptr", arg: 1, scope: !73, file: !74, line: 361, type: !24)
!79 = !DILocation(line: 0, scope: !73)
!80 = !DILocation(line: 363, column: 16, scope: !73)
!81 = !DILocation(line: 363, column: 10, scope: !73)
!82 = !DILocation(line: 363, column: 3, scope: !73)
!83 = distinct !DISubprogram(name: "atol", scope: !74, file: !74, line: 366, type: !84, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!84 = !DISubroutineType(types: !85)
!85 = !{!86, !24}
!86 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!87 = !{!88}
!88 = !DILocalVariable(name: "__nptr", arg: 1, scope: !83, file: !74, line: 366, type: !24)
!89 = !DILocation(line: 0, scope: !83)
!90 = !DILocation(line: 368, column: 10, scope: !83)
!91 = !DILocation(line: 368, column: 3, scope: !83)
!92 = distinct !DISubprogram(name: "atoll", scope: !74, file: !74, line: 373, type: !93, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !96)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !24}
!95 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!96 = !{!97}
!97 = !DILocalVariable(name: "__nptr", arg: 1, scope: !92, file: !74, line: 373, type: !24)
!98 = !DILocation(line: 0, scope: !92)
!99 = !DILocation(line: 375, column: 10, scope: !92)
!100 = !DILocation(line: 375, column: 3, scope: !92)
!101 = distinct !DISubprogram(name: "bsearch", scope: !102, file: !102, line: 20, type: !103, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!103 = !DISubroutineType(types: !104)
!104 = !{!23, !105, !105, !107, !107, !110}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 46, baseType: !109)
!108 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!109 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !74, line: 808, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!19, !105, !105}
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!115 = !DILocalVariable(name: "__key", arg: 1, scope: !101, file: !102, line: 20, type: !105)
!116 = !DILocalVariable(name: "__base", arg: 2, scope: !101, file: !102, line: 20, type: !105)
!117 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !101, file: !102, line: 20, type: !107)
!118 = !DILocalVariable(name: "__size", arg: 4, scope: !101, file: !102, line: 20, type: !107)
!119 = !DILocalVariable(name: "__compar", arg: 5, scope: !101, file: !102, line: 21, type: !110)
!120 = !DILocalVariable(name: "__l", scope: !101, file: !102, line: 23, type: !107)
!121 = !DILocalVariable(name: "__u", scope: !101, file: !102, line: 23, type: !107)
!122 = !DILocalVariable(name: "__idx", scope: !101, file: !102, line: 23, type: !107)
!123 = !DILocalVariable(name: "__p", scope: !101, file: !102, line: 24, type: !105)
!124 = !DILocalVariable(name: "__comparison", scope: !101, file: !102, line: 25, type: !19)
!125 = !DILocation(line: 0, scope: !101)
!126 = !DILocation(line: 29, column: 3, scope: !101)
!127 = !DILocation(line: 27, column: 7, scope: !101)
!128 = !DILocation(line: 29, column: 14, scope: !101)
!129 = !DILocation(line: 31, column: 20, scope: !130)
!130 = distinct !DILexicalBlock(scope: !101, file: !102, line: 30, column: 5)
!131 = !DILocation(line: 31, column: 27, scope: !130)
!132 = !DILocation(line: 32, column: 56, scope: !130)
!133 = !DILocation(line: 32, column: 47, scope: !130)
!134 = !DILocation(line: 33, column: 22, scope: !130)
!135 = !DILocation(line: 34, column: 24, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !102, line: 34, column: 11)
!137 = !DILocation(line: 34, column: 11, scope: !130)
!138 = !DILocation(line: 36, column: 29, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !102, line: 36, column: 16)
!140 = !DILocation(line: 36, column: 16, scope: !136)
!141 = !DILocation(line: 37, column: 14, scope: !139)
!142 = distinct !{!142, !126, !143}
!143 = !DILocation(line: 40, column: 5, scope: !101)
!144 = !DILocation(line: 43, column: 1, scope: !101)
!145 = distinct !DISubprogram(name: "atof", scope: !146, file: !146, line: 25, type: !147, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !150)
!146 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !24}
!149 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!150 = !{!151}
!151 = !DILocalVariable(name: "__nptr", arg: 1, scope: !145, file: !146, line: 25, type: !24)
!152 = !DILocation(line: 0, scope: !145)
!153 = !DILocation(line: 27, column: 10, scope: !145)
!154 = !DILocation(line: 27, column: 3, scope: !145)
!155 = distinct !DISubprogram(name: "__dpd64FromNumber", scope: !3, file: !3, line: 121, type: !156, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !191)
!156 = !DISubroutineType(types: !157)
!157 = !{!158, !158, !167, !180}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "decimal64", file: !160, line: 66, baseType: !161)
!160 = !DIFile(filename: "./decimal64.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 64, size: 64, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !161, file: !160, line: 65, baseType: !164, size: 64)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 8)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "decNumber", file: !170, line: 84, baseType: !171)
!170 = !DIFile(filename: "./decNumber.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 77, size: 192, elements: !172)
!172 = !{!173, !174, !175, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !171, file: !170, line: 78, baseType: !30, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "exponent", scope: !171, file: !170, line: 79, baseType: !30, size: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !171, file: !170, line: 81, baseType: !48, size: 8, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "lsu", scope: !171, file: !170, line: 83, baseType: !177, size: 96, offset: 80)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 96, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 6)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "decContext", file: !6, line: 93, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 82, size: 224, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !182, file: !6, line: 83, baseType: !30, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !182, file: !6, line: 84, baseType: !30, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !182, file: !6, line: 85, baseType: !30, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "round", scope: !182, file: !6, line: 86, baseType: !5, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "traps", scope: !182, file: !6, line: 87, baseType: !26, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !182, file: !6, line: 88, baseType: !26, size: 32, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "clamp", scope: !182, file: !6, line: 89, baseType: !48, size: 8, offset: 192)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !206, !211, !212, !216, !217}
!192 = !DILocalVariable(name: "d64", arg: 1, scope: !155, file: !3, line: 121, type: !158)
!193 = !DILocalVariable(name: "dn", arg: 2, scope: !155, file: !3, line: 121, type: !167)
!194 = !DILocalVariable(name: "set", arg: 3, scope: !155, file: !3, line: 122, type: !180)
!195 = !DILocalVariable(name: "status", scope: !155, file: !3, line: 123, type: !26)
!196 = !DILocalVariable(name: "ae", scope: !155, file: !3, line: 124, type: !30)
!197 = !DILocalVariable(name: "dw", scope: !155, file: !3, line: 125, type: !169)
!198 = !DILocalVariable(name: "dc", scope: !155, file: !3, line: 126, type: !181)
!199 = !DILocalVariable(name: "comb", scope: !155, file: !3, line: 127, type: !26)
!200 = !DILocalVariable(name: "exp", scope: !155, file: !3, line: 127, type: !26)
!201 = !DILocalVariable(name: "uiwork", scope: !155, file: !3, line: 128, type: !26)
!202 = !DILocalVariable(name: "targar", scope: !155, file: !3, line: 129, type: !203)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 2)
!206 = !DILocalVariable(name: "msd", scope: !207, file: !3, line: 180, type: !26)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 179, column: 11)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 164, column: 9)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 163, column: 9)
!210 = distinct !DILexicalBlock(scope: !155, file: !3, line: 151, column: 7)
!211 = !DILocalVariable(name: "pad", scope: !207, file: !3, line: 181, type: !30)
!212 = !DILocalVariable(name: "dpd", scope: !213, file: !3, line: 193, type: !215)
!213 = distinct !DILexicalBlock(scope: !214, file: !3, line: 192, column: 33)
!214 = distinct !DILexicalBlock(scope: !207, file: !3, line: 192, column: 11)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 192, elements: !178)
!216 = !DILocalVariable(name: "i", scope: !213, file: !3, line: 194, type: !26)
!217 = !DILocalVariable(name: "d", scope: !213, file: !3, line: 195, type: !30)
!218 = !DILocation(line: 0, scope: !155)
!219 = !DILocation(line: 125, column: 3, scope: !155)
!220 = !DILocation(line: 126, column: 3, scope: !155)
!221 = !DILocation(line: 128, column: 3, scope: !155)
!222 = !DILocation(line: 129, column: 3, scope: !155)
!223 = !DILocation(line: 129, column: 8, scope: !155)
!224 = !DILocation(line: 138, column: 10, scope: !155)
!225 = !DILocation(line: 138, column: 23, scope: !155)
!226 = !DILocation(line: 138, column: 18, scope: !155)
!227 = !DILocation(line: 139, column: 17, scope: !228)
!228 = distinct !DILexicalBlock(scope: !155, file: !3, line: 139, column: 7)
!229 = !DILocation(line: 140, column: 4, scope: !228)
!230 = !DILocation(line: 0, scope: !210)
!231 = !DILocation(line: 151, column: 11, scope: !210)
!232 = !DILocation(line: 142, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !3, line: 141, column: 26)
!234 = !DILocation(line: 143, column: 19, scope: !233)
!235 = !DILocation(line: 143, column: 8, scope: !233)
!236 = !DILocation(line: 143, column: 13, scope: !233)
!237 = !DILocation(line: 144, column: 5, scope: !233)
!238 = !DILocation(line: 146, column: 18, scope: !233)
!239 = !DILocation(line: 146, column: 22, scope: !233)
!240 = !DILocation(line: 146, column: 8, scope: !233)
!241 = !DILocation(line: 146, column: 12, scope: !233)
!242 = !DILocation(line: 147, column: 15, scope: !233)
!243 = !DILocation(line: 149, column: 5, scope: !233)
!244 = !DILocation(line: 151, column: 15, scope: !210)
!245 = !DILocation(line: 151, column: 7, scope: !155)
!246 = !DILocation(line: 152, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 152, column: 9)
!248 = distinct !DILexicalBlock(scope: !210, file: !3, line: 151, column: 28)
!249 = !DILocation(line: 152, column: 9, scope: !248)
!250 = !DILocation(line: 152, column: 26, scope: !247)
!251 = !DILocation(line: 152, column: 32, scope: !247)
!252 = !DILocation(line: 154, column: 12, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !3, line: 154, column: 11)
!254 = distinct !DILexicalBlock(scope: !247, file: !3, line: 153, column: 11)
!255 = !DILocation(line: 154, column: 20, scope: !253)
!256 = !DILocation(line: 154, column: 24, scope: !253)
!257 = !DILocation(line: 0, scope: !253)
!258 = !DILocation(line: 155, column: 16, scope: !253)
!259 = !DILocation(line: 154, column: 31, scope: !253)
!260 = !DILocation(line: 154, column: 37, scope: !253)
!261 = !DILocation(line: 155, column: 8, scope: !253)
!262 = !DILocation(line: 155, column: 22, scope: !253)
!263 = !DILocation(line: 154, column: 11, scope: !254)
!264 = !DILocation(line: 156, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !253, file: !3, line: 155, column: 40)
!266 = !DILocation(line: 156, column: 2, scope: !265)
!267 = !DILocation(line: 158, column: 15, scope: !268)
!268 = distinct !DILexicalBlock(scope: !254, file: !3, line: 158, column: 11)
!269 = !DILocation(line: 157, column: 2, scope: !265)
!270 = !DILocation(line: 158, column: 19, scope: !268)
!271 = !DILocation(line: 0, scope: !268)
!272 = !DILocation(line: 158, column: 11, scope: !254)
!273 = !DILocation(line: 158, column: 34, scope: !268)
!274 = !DILocation(line: 158, column: 28, scope: !268)
!275 = !DILocation(line: 159, column: 19, scope: !268)
!276 = !DILocation(line: 164, column: 9, scope: !208)
!277 = !DILocation(line: 164, column: 9, scope: !209)
!278 = !DILocation(line: 166, column: 15, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 166, column: 11)
!280 = distinct !DILexicalBlock(scope: !208, file: !3, line: 164, column: 30)
!281 = !DILocation(line: 166, column: 23, scope: !279)
!282 = !DILocation(line: 166, column: 11, scope: !280)
!283 = !DILocation(line: 168, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !3, line: 166, column: 41)
!285 = !DILocation(line: 169, column: 2, scope: !284)
!286 = !DILocation(line: 171, column: 18, scope: !287)
!287 = distinct !DILexicalBlock(scope: !279, file: !3, line: 170, column: 13)
!288 = !DILocation(line: 172, column: 9, scope: !289)
!289 = distinct !DILexicalBlock(scope: !287, file: !3, line: 172, column: 6)
!290 = !DILocation(line: 174, column: 10, scope: !291)
!291 = distinct !DILexicalBlock(scope: !289, file: !3, line: 172, column: 27)
!292 = !DILocation(line: 172, column: 6, scope: !287)
!293 = !DILocation(line: 0, scope: !279)
!294 = !DILocation(line: 177, column: 16, scope: !280)
!295 = !DILocation(line: 177, column: 21, scope: !280)
!296 = !DILocation(line: 178, column: 7, scope: !280)
!297 = !DILocation(line: 0, scope: !207)
!298 = !DILocation(line: 184, column: 22, scope: !207)
!299 = !DILocation(line: 184, column: 30, scope: !207)
!300 = !DILocation(line: 185, column: 14, scope: !301)
!301 = distinct !DILexicalBlock(scope: !207, file: !3, line: 185, column: 11)
!302 = !DILocation(line: 185, column: 11, scope: !207)
!303 = !DILocation(line: 192, column: 28, scope: !214)
!304 = !DILocation(line: 192, column: 11, scope: !207)
!305 = !DILocation(line: 193, column: 2, scope: !213)
!306 = !DILocation(line: 193, column: 7, scope: !213)
!307 = !DILocation(line: 195, column: 12, scope: !213)
!308 = !DILocation(line: 0, scope: !213)
!309 = !DILocation(line: 196, column: 7, scope: !310)
!310 = distinct !DILexicalBlock(scope: !213, file: !3, line: 196, column: 2)
!311 = !DILocation(line: 0, scope: !310)
!312 = !DILocation(line: 196, column: 13, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !3, line: 196, column: 2)
!314 = !DILocation(line: 196, column: 2, scope: !310)
!315 = !DILocation(line: 196, column: 43, scope: !313)
!316 = !DILocation(line: 196, column: 35, scope: !313)
!317 = !DILocation(line: 196, column: 28, scope: !313)
!318 = !DILocation(line: 196, column: 34, scope: !313)
!319 = !DILocation(line: 196, column: 18, scope: !313)
!320 = !DILocation(line: 196, column: 23, scope: !313)
!321 = !DILocation(line: 196, column: 2, scope: !313)
!322 = distinct !{!322, !314, !323}
!323 = !DILocation(line: 196, column: 53, scope: !310)
!324 = !DILocation(line: 197, column: 10, scope: !213)
!325 = !DILocation(line: 197, column: 2, scope: !213)
!326 = !DILocation(line: 198, column: 10, scope: !213)
!327 = !DILocation(line: 198, column: 16, scope: !213)
!328 = !DILocation(line: 198, column: 8, scope: !213)
!329 = !DILocation(line: 199, column: 10, scope: !213)
!330 = !DILocation(line: 199, column: 16, scope: !213)
!331 = !DILocation(line: 199, column: 8, scope: !213)
!332 = !DILocation(line: 200, column: 16, scope: !333)
!333 = distinct !DILexicalBlock(scope: !213, file: !3, line: 200, column: 6)
!334 = !DILocation(line: 200, column: 6, scope: !213)
!335 = !DILocation(line: 201, column: 12, scope: !336)
!336 = distinct !DILexicalBlock(scope: !333, file: !3, line: 200, column: 20)
!337 = !DILocation(line: 201, column: 18, scope: !336)
!338 = !DILocation(line: 201, column: 10, scope: !336)
!339 = !DILocation(line: 202, column: 18, scope: !336)
!340 = !DILocation(line: 202, column: 4, scope: !336)
!341 = !DILocation(line: 203, column: 12, scope: !336)
!342 = !DILocation(line: 203, column: 18, scope: !336)
!343 = !DILocation(line: 203, column: 10, scope: !336)
!344 = !DILocation(line: 204, column: 4, scope: !336)
!345 = !DILocation(line: 205, column: 6, scope: !213)
!346 = !DILocation(line: 206, column: 2, scope: !214)
!347 = !DILocation(line: 206, column: 2, scope: !213)
!348 = !DILocation(line: 208, column: 21, scope: !349)
!349 = distinct !DILexicalBlock(scope: !214, file: !3, line: 207, column: 13)
!350 = !DILocation(line: 208, column: 2, scope: !349)
!351 = !DILocation(line: 210, column: 6, scope: !349)
!352 = !DILocation(line: 210, column: 12, scope: !349)
!353 = !DILocation(line: 211, column: 8, scope: !349)
!354 = !DILocation(line: 0, scope: !214)
!355 = !DILocation(line: 215, column: 14, scope: !356)
!356 = distinct !DILexicalBlock(scope: !207, file: !3, line: 215, column: 11)
!357 = !DILocation(line: 215, column: 11, scope: !207)
!358 = !DILocation(line: 215, column: 36, scope: !356)
!359 = !DILocation(line: 215, column: 41, scope: !356)
!360 = !DILocation(line: 215, column: 56, scope: !356)
!361 = !DILocation(line: 215, column: 49, scope: !356)
!362 = !DILocation(line: 215, column: 19, scope: !356)
!363 = !DILocation(line: 216, column: 22, scope: !356)
!364 = !DILocation(line: 216, column: 27, scope: !356)
!365 = !DILocation(line: 216, column: 35, scope: !356)
!366 = !DILocation(line: 0, scope: !208)
!367 = !DILocation(line: 218, column: 17, scope: !209)
!368 = !DILocation(line: 218, column: 5, scope: !209)
!369 = !DILocation(line: 218, column: 11, scope: !209)
!370 = !DILocation(line: 219, column: 23, scope: !209)
!371 = !DILocation(line: 219, column: 11, scope: !209)
!372 = !DILocation(line: 222, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !155, file: !3, line: 222, column: 7)
!374 = !DILocation(line: 222, column: 15, scope: !373)
!375 = !DILocation(line: 222, column: 7, scope: !155)
!376 = !DILocation(line: 222, column: 24, scope: !373)
!377 = !DILocation(line: 222, column: 30, scope: !373)
!378 = !DILocation(line: 228, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 226, column: 18)
!380 = distinct !DILexicalBlock(scope: !155, file: !3, line: 226, column: 7)
!381 = !DILocation(line: 229, column: 11, scope: !379)
!382 = !DILocation(line: 249, column: 13, scope: !383)
!383 = distinct !DILexicalBlock(scope: !155, file: !3, line: 249, column: 7)
!384 = !DILocation(line: 249, column: 7, scope: !155)
!385 = !DILocation(line: 249, column: 18, scope: !383)
!386 = !DILocation(line: 252, column: 3, scope: !155)
!387 = !DILocation(line: 251, column: 3, scope: !155)
!388 = distinct !DISubprogram(name: "decDigitsToDPD", scope: !3, file: !3, line: 662, type: !389, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !167, !391, !30}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !405, !409, !412, !414, !415, !416, !422}
!393 = !DILocalVariable(name: "dn", arg: 1, scope: !388, file: !3, line: 662, type: !167)
!394 = !DILocalVariable(name: "targ", arg: 2, scope: !388, file: !3, line: 662, type: !391)
!395 = !DILocalVariable(name: "shift", arg: 3, scope: !388, file: !3, line: 662, type: !30)
!396 = !DILocalVariable(name: "cut", scope: !388, file: !3, line: 663, type: !30)
!397 = !DILocalVariable(name: "n", scope: !388, file: !3, line: 664, type: !30)
!398 = !DILocalVariable(name: "digits", scope: !388, file: !3, line: 665, type: !30)
!399 = !DILocalVariable(name: "dpd", scope: !388, file: !3, line: 666, type: !26)
!400 = !DILocalVariable(name: "bin", scope: !388, file: !3, line: 667, type: !26)
!401 = !DILocalVariable(name: "uout", scope: !388, file: !3, line: 668, type: !391)
!402 = !DILocalVariable(name: "uoff", scope: !388, file: !3, line: 669, type: !26)
!403 = !DILocalVariable(name: "inu", scope: !388, file: !3, line: 670, type: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!405 = !DILocalVariable(name: "uar", scope: !388, file: !3, line: 671, type: !406)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 192, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 12)
!409 = !DILocalVariable(name: "source", scope: !410, file: !3, line: 680, type: !404)
!410 = distinct !DILexicalBlock(scope: !411, file: !3, line: 676, column: 17)
!411 = distinct !DILexicalBlock(scope: !388, file: !3, line: 676, column: 7)
!412 = !DILocalVariable(name: "target", scope: !410, file: !3, line: 681, type: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!414 = !DILocalVariable(name: "first", scope: !410, file: !3, line: 681, type: !413)
!415 = !DILocalVariable(name: "next", scope: !410, file: !3, line: 682, type: !26)
!416 = !DILocalVariable(name: "quot", scope: !417, file: !3, line: 695, type: !26)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 692, column: 51)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 692, column: 7)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 692, column: 7)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 690, column: 11)
!421 = distinct !DILexicalBlock(scope: !410, file: !3, line: 687, column: 9)
!422 = !DILocalVariable(name: "rem", scope: !417, file: !3, line: 696, type: !26)
!423 = !DILocation(line: 0, scope: !388)
!424 = !DILocation(line: 665, column: 19, scope: !388)
!425 = !DILocation(line: 670, column: 19, scope: !388)
!426 = !DILocation(line: 671, column: 3, scope: !388)
!427 = !DILocation(line: 671, column: 8, scope: !388)
!428 = !DILocation(line: 676, column: 12, scope: !411)
!429 = !DILocation(line: 676, column: 7, scope: !388)
!430 = !DILocation(line: 0, scope: !410)
!431 = !DILocation(line: 684, column: 20, scope: !410)
!432 = !DILocation(line: 684, column: 19, scope: !410)
!433 = !DILocation(line: 684, column: 31, scope: !410)
!434 = !DILocation(line: 685, column: 16, scope: !410)
!435 = !DILocation(line: 685, column: 15, scope: !410)
!436 = !DILocation(line: 685, column: 27, scope: !410)
!437 = !DILocation(line: 685, column: 30, scope: !410)
!438 = !DILocation(line: 685, column: 29, scope: !410)
!439 = !DILocation(line: 686, column: 17, scope: !410)
!440 = !DILocation(line: 686, column: 16, scope: !410)
!441 = !DILocation(line: 687, column: 12, scope: !421)
!442 = !DILocation(line: 687, column: 9, scope: !410)
!443 = !DILocation(line: 688, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 688, column: 7)
!445 = distinct !DILexicalBlock(scope: !421, file: !3, line: 687, column: 17)
!446 = !DILocation(line: 688, column: 20, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !3, line: 688, column: 7)
!448 = !DILocation(line: 688, column: 59, scope: !447)
!449 = !DILocation(line: 688, column: 58, scope: !447)
!450 = !DILocation(line: 688, column: 37, scope: !447)
!451 = !DILocation(line: 688, column: 47, scope: !447)
!452 = !DILocation(line: 688, column: 7, scope: !447)
!453 = distinct !{!453, !443, !454}
!454 = !DILocation(line: 688, column: 60, scope: !444)
!455 = !DILocation(line: 691, column: 17, scope: !420)
!456 = !DILocation(line: 691, column: 16, scope: !420)
!457 = !DILocation(line: 691, column: 34, scope: !420)
!458 = !DILocation(line: 0, scope: !417)
!459 = !DILocation(line: 692, column: 7, scope: !420)
!460 = !DILocation(line: 692, column: 20, scope: !418)
!461 = !DILocation(line: 692, column: 7, scope: !419)
!462 = !DILocation(line: 695, column: 14, scope: !417)
!463 = !DILocation(line: 696, column: 26, scope: !417)
!464 = !DILocation(line: 696, column: 25, scope: !417)
!465 = !DILocation(line: 696, column: 20, scope: !417)
!466 = !DILocation(line: 702, column: 12, scope: !467)
!467 = distinct !DILexicalBlock(scope: !417, file: !3, line: 702, column: 6)
!468 = !DILocation(line: 702, column: 6, scope: !417)
!469 = !DILocation(line: 697, column: 8, scope: !417)
!470 = !DILocation(line: 702, column: 29, scope: !467)
!471 = !DILocation(line: 702, column: 28, scope: !467)
!472 = !DILocation(line: 702, column: 21, scope: !467)
!473 = !DILocation(line: 703, column: 11, scope: !417)
!474 = !DILocation(line: 703, column: 10, scope: !417)
!475 = !DILocation(line: 692, column: 37, scope: !418)
!476 = !DILocation(line: 692, column: 47, scope: !418)
!477 = !DILocation(line: 692, column: 7, scope: !418)
!478 = distinct !{!478, !461, !479}
!479 = !DILocation(line: 704, column: 2, scope: !419)
!480 = !DILocation(line: 707, column: 5, scope: !410)
!481 = !DILocation(line: 685, column: 11, scope: !410)
!482 = !DILocation(line: 682, column: 11, scope: !410)
!483 = !DILocation(line: 0, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 707, column: 5)
!485 = distinct !DILexicalBlock(scope: !410, file: !3, line: 707, column: 5)
!486 = !DILocation(line: 707, column: 18, scope: !484)
!487 = !DILocation(line: 707, column: 5, scope: !485)
!488 = !DILocation(line: 708, column: 15, scope: !489)
!489 = distinct !DILexicalBlock(scope: !484, file: !3, line: 707, column: 35)
!490 = !DILocation(line: 708, column: 14, scope: !489)
!491 = !DILocation(line: 707, column: 31, scope: !484)
!492 = !DILocation(line: 707, column: 5, scope: !484)
!493 = distinct !{!493, !487, !494}
!494 = !DILocation(line: 710, column: 7, scope: !485)
!495 = !DILocation(line: 711, column: 11, scope: !410)
!496 = !DILocation(line: 713, column: 5, scope: !410)
!497 = !DILocation(line: 723, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !388, file: !3, line: 723, column: 3)
!499 = !DILocation(line: 668, column: 9, scope: !388)
!500 = !DILocation(line: 723, column: 18, scope: !501)
!501 = distinct !DILexicalBlock(scope: !498, file: !3, line: 723, column: 3)
!502 = !DILocation(line: 723, column: 3, scope: !498)
!503 = !DILocation(line: 725, column: 11, scope: !504)
!504 = distinct !DILexicalBlock(scope: !501, file: !3, line: 723, column: 27)
!505 = !DILocation(line: 726, column: 13, scope: !504)
!506 = !DILocation(line: 727, column: 10, scope: !504)
!507 = !DILocation(line: 752, column: 9, scope: !504)
!508 = !DILocation(line: 755, column: 15, scope: !504)
!509 = !DILocation(line: 755, column: 10, scope: !504)
!510 = !DILocation(line: 756, column: 9, scope: !504)
!511 = !DILocation(line: 757, column: 13, scope: !512)
!512 = distinct !DILexicalBlock(scope: !504, file: !3, line: 757, column: 9)
!513 = !DILocation(line: 757, column: 9, scope: !504)
!514 = !DILocation(line: 758, column: 9, scope: !504)
!515 = !DILocation(line: 759, column: 9, scope: !504)
!516 = !DILocation(line: 760, column: 20, scope: !504)
!517 = !DILocation(line: 760, column: 15, scope: !504)
!518 = !DILocation(line: 760, column: 10, scope: !504)
!519 = !DILocation(line: 761, column: 5, scope: !504)
!520 = !DILocation(line: 0, scope: !504)
!521 = !DILocation(line: 723, column: 3, scope: !501)
!522 = distinct !{!522, !502, !523}
!523 = !DILocation(line: 761, column: 5, scope: !498)
!524 = !DILocation(line: 763, column: 3, scope: !388)
!525 = distinct !DISubprogram(name: "__dpd64ToNumber", scope: !3, file: !3, line: 260, type: !526, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !531)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !529, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539}
!532 = !DILocalVariable(name: "d64", arg: 1, scope: !525, file: !3, line: 260, type: !529)
!533 = !DILocalVariable(name: "dn", arg: 2, scope: !525, file: !3, line: 260, type: !528)
!534 = !DILocalVariable(name: "msd", scope: !525, file: !3, line: 261, type: !26)
!535 = !DILocalVariable(name: "exp", scope: !525, file: !3, line: 262, type: !26)
!536 = !DILocalVariable(name: "comb", scope: !525, file: !3, line: 263, type: !26)
!537 = !DILocalVariable(name: "need", scope: !525, file: !3, line: 264, type: !30)
!538 = !DILocalVariable(name: "uiwork", scope: !525, file: !3, line: 265, type: !26)
!539 = !DILocalVariable(name: "sourar", scope: !525, file: !3, line: 266, type: !203)
!540 = !DILocation(line: 0, scope: !525)
!541 = !DILocation(line: 265, column: 3, scope: !525)
!542 = !DILocation(line: 266, column: 3, scope: !525)
!543 = !DILocation(line: 266, column: 8, scope: !525)
!544 = !DILocation(line: 272, column: 12, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !3, line: 271, column: 18)
!546 = distinct !DILexicalBlock(scope: !525, file: !3, line: 271, column: 7)
!547 = !DILocation(line: 272, column: 5, scope: !545)
!548 = !DILocation(line: 272, column: 11, scope: !545)
!549 = !DILocation(line: 273, column: 12, scope: !545)
!550 = !DILocation(line: 273, column: 5, scope: !545)
!551 = !DILocation(line: 273, column: 11, scope: !545)
!552 = !DILocation(line: 280, column: 15, scope: !525)
!553 = !DILocation(line: 280, column: 20, scope: !525)
!554 = !DILocation(line: 282, column: 3, scope: !525)
!555 = !DILocation(line: 283, column: 13, scope: !556)
!556 = distinct !DILexicalBlock(scope: !525, file: !3, line: 283, column: 7)
!557 = !DILocation(line: 283, column: 7, scope: !525)
!558 = !DILocation(line: 283, column: 30, scope: !556)
!559 = !DILocation(line: 283, column: 34, scope: !556)
!560 = !DILocation(line: 283, column: 26, scope: !556)
!561 = !DILocation(line: 285, column: 7, scope: !525)
!562 = !DILocation(line: 288, column: 10, scope: !563)
!563 = distinct !DILexicalBlock(scope: !525, file: !3, line: 288, column: 7)
!564 = !DILocation(line: 288, column: 7, scope: !525)
!565 = !DILocation(line: 289, column: 12, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 289, column: 9)
!567 = distinct !DILexicalBlock(scope: !563, file: !3, line: 288, column: 15)
!568 = !DILocation(line: 289, column: 9, scope: !567)
!569 = !DILocation(line: 290, column: 11, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !3, line: 289, column: 17)
!571 = !DILocation(line: 290, column: 15, scope: !570)
!572 = !DILocation(line: 291, column: 7, scope: !570)
!573 = !DILocation(line: 293, column: 20, scope: !574)
!574 = distinct !DILexicalBlock(scope: !566, file: !3, line: 293, column: 14)
!575 = !DILocation(line: 0, scope: !574)
!576 = !DILocation(line: 293, column: 14, scope: !566)
!577 = !DILocation(line: 293, column: 41, scope: !574)
!578 = !DILocation(line: 293, column: 33, scope: !574)
!579 = !DILocation(line: 294, column: 18, scope: !574)
!580 = !DILocation(line: 286, column: 7, scope: !525)
!581 = !DILocation(line: 298, column: 22, scope: !582)
!582 = distinct !DILexicalBlock(scope: !563, file: !3, line: 297, column: 9)
!583 = !DILocation(line: 298, column: 35, scope: !582)
!584 = !DILocation(line: 298, column: 40, scope: !582)
!585 = !DILocation(line: 298, column: 26, scope: !582)
!586 = !DILocation(line: 298, column: 46, scope: !582)
!587 = !DILocation(line: 298, column: 9, scope: !582)
!588 = !DILocation(line: 298, column: 17, scope: !582)
!589 = !DILocation(line: 302, column: 9, scope: !525)
!590 = !DILocation(line: 303, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !525, file: !3, line: 303, column: 7)
!592 = !DILocation(line: 303, column: 7, scope: !525)
!593 = !DILocation(line: 304, column: 16, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !3, line: 303, column: 12)
!595 = !DILocation(line: 304, column: 11, scope: !594)
!596 = !DILocation(line: 306, column: 5, scope: !594)
!597 = !DILocation(line: 308, column: 10, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !3, line: 308, column: 9)
!599 = distinct !DILexicalBlock(scope: !591, file: !3, line: 307, column: 9)
!600 = !DILocation(line: 308, column: 9, scope: !599)
!601 = !DILocation(line: 309, column: 12, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 309, column: 11)
!603 = distinct !DILexicalBlock(scope: !598, file: !3, line: 308, column: 18)
!604 = !DILocation(line: 309, column: 11, scope: !603)
!605 = !DILocation(line: 311, column: 17, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !3, line: 311, column: 11)
!607 = !DILocation(line: 311, column: 11, scope: !603)
!608 = !DILocation(line: 313, column: 7, scope: !603)
!609 = !DILocation(line: 316, column: 17, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 316, column: 11)
!611 = distinct !DILexicalBlock(scope: !598, file: !3, line: 314, column: 11)
!612 = !DILocation(line: 316, column: 11, scope: !611)
!613 = !DILocation(line: 0, scope: !591)
!614 = !DILocation(line: 320, column: 3, scope: !525)
!615 = !DILocation(line: 321, column: 3, scope: !525)
!616 = !DILocation(line: 322, column: 3, scope: !525)
!617 = distinct !DISubprogram(name: "decDigitsFromDPD", scope: !3, file: !3, line: 788, type: !618, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !621)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !528, !620, !30}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630}
!622 = !DILocalVariable(name: "dn", arg: 1, scope: !617, file: !3, line: 788, type: !528)
!623 = !DILocalVariable(name: "sour", arg: 2, scope: !617, file: !3, line: 788, type: !620)
!624 = !DILocalVariable(name: "declets", arg: 3, scope: !617, file: !3, line: 788, type: !30)
!625 = !DILocalVariable(name: "dpd", scope: !617, file: !3, line: 790, type: !26)
!626 = !DILocalVariable(name: "n", scope: !617, file: !3, line: 791, type: !30)
!627 = !DILocalVariable(name: "uout", scope: !617, file: !3, line: 792, type: !413)
!628 = !DILocalVariable(name: "last", scope: !617, file: !3, line: 793, type: !413)
!629 = !DILocalVariable(name: "uin", scope: !617, file: !3, line: 794, type: !620)
!630 = !DILocalVariable(name: "uoff", scope: !617, file: !3, line: 795, type: !26)
!631 = !DILocation(line: 0, scope: !617)
!632 = !DILocation(line: 792, column: 14, scope: !617)
!633 = !DILocation(line: 808, column: 8, scope: !634)
!634 = distinct !DILexicalBlock(scope: !617, file: !3, line: 808, column: 3)
!635 = !DILocation(line: 793, column: 9, scope: !617)
!636 = !DILocation(line: 0, scope: !634)
!637 = !DILocation(line: 808, column: 22, scope: !638)
!638 = distinct !DILexicalBlock(scope: !634, file: !3, line: 808, column: 3)
!639 = !DILocation(line: 808, column: 3, scope: !634)
!640 = !DILocation(line: 809, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !638, file: !3, line: 808, column: 32)
!642 = !DILocation(line: 809, column: 13, scope: !641)
!643 = !DILocation(line: 810, column: 9, scope: !641)
!644 = !DILocation(line: 811, column: 13, scope: !645)
!645 = distinct !DILexicalBlock(scope: !641, file: !3, line: 811, column: 9)
!646 = !DILocation(line: 811, column: 9, scope: !641)
!647 = !DILocation(line: 812, column: 10, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !3, line: 811, column: 18)
!649 = !DILocation(line: 813, column: 11, scope: !648)
!650 = !DILocation(line: 814, column: 12, scope: !648)
!651 = !DILocation(line: 814, column: 21, scope: !648)
!652 = !DILocation(line: 814, column: 16, scope: !648)
!653 = !DILocation(line: 814, column: 10, scope: !648)
!654 = !DILocation(line: 815, column: 7, scope: !648)
!655 = !DILocation(line: 0, scope: !641)
!656 = !DILocation(line: 816, column: 8, scope: !641)
!657 = !DILocation(line: 819, column: 12, scope: !658)
!658 = distinct !DILexicalBlock(scope: !641, file: !3, line: 819, column: 9)
!659 = !DILocation(line: 819, column: 9, scope: !641)
!660 = !DILocation(line: 819, column: 17, scope: !658)
!661 = !DILocation(line: 821, column: 13, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !3, line: 820, column: 11)
!663 = !DILocation(line: 0, scope: !658)
!664 = !DILocation(line: 824, column: 9, scope: !641)
!665 = !DILocation(line: 808, column: 3, scope: !638)
!666 = distinct !{!666, !639, !667}
!667 = !DILocation(line: 825, column: 5, scope: !634)
!668 = !DILocation(line: 875, column: 19, scope: !617)
!669 = !DILocation(line: 875, column: 14, scope: !617)
!670 = !DILocation(line: 875, column: 7, scope: !617)
!671 = !DILocation(line: 875, column: 13, scope: !617)
!672 = !DILocation(line: 878, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !617, file: !3, line: 878, column: 7)
!674 = !DILocation(line: 878, column: 12, scope: !673)
!675 = !DILocation(line: 878, column: 7, scope: !617)
!676 = !DILocation(line: 879, column: 13, scope: !617)
!677 = !DILocation(line: 881, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !617, file: !3, line: 881, column: 7)
!679 = !DILocation(line: 881, column: 12, scope: !678)
!680 = !DILocation(line: 881, column: 7, scope: !617)
!681 = !DILocation(line: 882, column: 13, scope: !617)
!682 = !DILocation(line: 892, column: 3, scope: !617)
!683 = !DILocation(line: 893, column: 3, scope: !617)
!684 = distinct !DISubprogram(name: "__dpd64ToEngString", scope: !3, file: !3, line: 339, type: !685, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{!21, !529, !21}
!687 = !{!688, !689, !690}
!688 = !DILocalVariable(name: "d64", arg: 1, scope: !684, file: !3, line: 339, type: !529)
!689 = !DILocalVariable(name: "string", arg: 2, scope: !684, file: !3, line: 339, type: !21)
!690 = !DILocalVariable(name: "dn", scope: !684, file: !3, line: 340, type: !169)
!691 = !DILocation(line: 0, scope: !684)
!692 = !DILocation(line: 340, column: 3, scope: !684)
!693 = !DILocation(line: 341, column: 3, scope: !684)
!694 = !DILocation(line: 342, column: 3, scope: !684)
!695 = !DILocation(line: 344, column: 3, scope: !684)
!696 = !DILocation(line: 343, column: 3, scope: !684)
!697 = distinct !DISubprogram(name: "__dpd64ToString", scope: !3, file: !3, line: 346, type: !685, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !708, !709, !710, !711, !712, !713, !714, !715}
!699 = !DILocalVariable(name: "d64", arg: 1, scope: !697, file: !3, line: 346, type: !529)
!700 = !DILocalVariable(name: "string", arg: 2, scope: !697, file: !3, line: 346, type: !21)
!701 = !DILocalVariable(name: "msd", scope: !697, file: !3, line: 347, type: !26)
!702 = !DILocalVariable(name: "exp", scope: !697, file: !3, line: 348, type: !30)
!703 = !DILocalVariable(name: "comb", scope: !697, file: !3, line: 349, type: !26)
!704 = !DILocalVariable(name: "cstart", scope: !697, file: !3, line: 350, type: !21)
!705 = !DILocalVariable(name: "c", scope: !697, file: !3, line: 351, type: !21)
!706 = !DILocalVariable(name: "u", scope: !697, file: !3, line: 352, type: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!708 = !DILocalVariable(name: "s", scope: !697, file: !3, line: 353, type: !21)
!709 = !DILocalVariable(name: "t", scope: !697, file: !3, line: 353, type: !21)
!710 = !DILocalVariable(name: "dpd", scope: !697, file: !3, line: 354, type: !30)
!711 = !DILocalVariable(name: "pre", scope: !697, file: !3, line: 355, type: !30)
!712 = !DILocalVariable(name: "e", scope: !697, file: !3, line: 355, type: !30)
!713 = !DILocalVariable(name: "uiwork", scope: !697, file: !3, line: 356, type: !26)
!714 = !DILocalVariable(name: "sourar", scope: !697, file: !3, line: 358, type: !203)
!715 = !DILocalVariable(name: "dotat", scope: !716, file: !3, line: 440, type: !21)
!716 = distinct !DILexicalBlock(scope: !717, file: !3, line: 439, column: 14)
!717 = distinct !DILexicalBlock(scope: !697, file: !3, line: 439, column: 7)
!718 = !DILocation(line: 0, scope: !697)
!719 = !DILocation(line: 356, column: 3, scope: !697)
!720 = !DILocation(line: 358, column: 3, scope: !697)
!721 = !DILocation(line: 358, column: 8, scope: !697)
!722 = !DILocation(line: 364, column: 12, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 363, column: 18)
!724 = distinct !DILexicalBlock(scope: !697, file: !3, line: 363, column: 7)
!725 = !DILocation(line: 364, column: 5, scope: !723)
!726 = !DILocation(line: 364, column: 11, scope: !723)
!727 = !DILocation(line: 365, column: 12, scope: !723)
!728 = !DILocation(line: 365, column: 5, scope: !723)
!729 = !DILocation(line: 365, column: 11, scope: !723)
!730 = !DILocation(line: 373, column: 20, scope: !731)
!731 = distinct !DILexicalBlock(scope: !697, file: !3, line: 373, column: 7)
!732 = !DILocation(line: 373, column: 7, scope: !697)
!733 = !DILocation(line: 373, column: 26, scope: !731)
!734 = !DILocation(line: 373, column: 28, scope: !731)
!735 = !DILocation(line: 373, column: 24, scope: !731)
!736 = !DILocation(line: 375, column: 15, scope: !697)
!737 = !DILocation(line: 375, column: 20, scope: !697)
!738 = !DILocation(line: 376, column: 7, scope: !697)
!739 = !DILocation(line: 379, column: 10, scope: !740)
!740 = distinct !DILexicalBlock(scope: !697, file: !3, line: 379, column: 7)
!741 = !DILocation(line: 379, column: 7, scope: !697)
!742 = !DILocation(line: 380, column: 12, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 380, column: 9)
!744 = distinct !DILexicalBlock(scope: !740, file: !3, line: 379, column: 15)
!745 = !DILocation(line: 380, column: 9, scope: !744)
!746 = !DILocation(line: 381, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !3, line: 380, column: 17)
!748 = !DILocation(line: 382, column: 15, scope: !747)
!749 = !DILocation(line: 382, column: 7, scope: !747)
!750 = !DILocation(line: 383, column: 7, scope: !747)
!751 = !DILocation(line: 385, column: 15, scope: !752)
!752 = distinct !DILexicalBlock(scope: !744, file: !3, line: 385, column: 9)
!753 = !DILocation(line: 385, column: 9, scope: !744)
!754 = !DILocation(line: 385, column: 30, scope: !752)
!755 = !DILocation(line: 385, column: 32, scope: !752)
!756 = !DILocation(line: 385, column: 28, scope: !752)
!757 = !DILocation(line: 386, column: 5, scope: !744)
!758 = !DILocation(line: 387, column: 6, scope: !744)
!759 = !DILocation(line: 388, column: 15, scope: !760)
!760 = distinct !DILexicalBlock(scope: !744, file: !3, line: 388, column: 9)
!761 = !DILocation(line: 388, column: 19, scope: !760)
!762 = !DILocation(line: 388, column: 29, scope: !760)
!763 = !DILocation(line: 388, column: 41, scope: !760)
!764 = !DILocation(line: 388, column: 9, scope: !744)
!765 = !DILocation(line: 377, column: 7, scope: !697)
!766 = !DILocation(line: 392, column: 17, scope: !740)
!767 = !DILocation(line: 392, column: 30, scope: !740)
!768 = !DILocation(line: 392, column: 35, scope: !740)
!769 = !DILocation(line: 392, column: 21, scope: !740)
!770 = !DILocation(line: 392, column: 41, scope: !740)
!771 = !DILocation(line: 0, scope: !740)
!772 = !DILocation(line: 396, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !697, file: !3, line: 396, column: 7)
!774 = !DILocation(line: 396, column: 7, scope: !697)
!775 = !DILocation(line: 396, column: 17, scope: !773)
!776 = !DILocation(line: 396, column: 14, scope: !773)
!777 = !DILocation(line: 396, column: 16, scope: !773)
!778 = !DILocation(line: 410, column: 8, scope: !697)
!779 = !DILocation(line: 396, column: 12, scope: !773)
!780 = !DILocation(line: 410, column: 14, scope: !697)
!781 = !DILocation(line: 410, column: 18, scope: !697)
!782 = !DILocation(line: 411, column: 3, scope: !697)
!783 = !DILocation(line: 411, column: 3, scope: !784)
!784 = distinct !DILexicalBlock(scope: !697, file: !3, line: 411, column: 3)
!785 = !DILocation(line: 411, column: 3, scope: !786)
!786 = distinct !DILexicalBlock(scope: !784, file: !3, line: 411, column: 3)
!787 = !DILocation(line: 411, column: 3, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !3, line: 411, column: 3)
!789 = !DILocation(line: 411, column: 3, scope: !790)
!790 = distinct !DILexicalBlock(scope: !788, file: !3, line: 411, column: 3)
!791 = !DILocation(line: 0, scope: !784)
!792 = !DILocation(line: 412, column: 21, scope: !697)
!793 = !DILocation(line: 412, column: 29, scope: !697)
!794 = !DILocation(line: 412, column: 35, scope: !697)
!795 = !DILocation(line: 412, column: 26, scope: !697)
!796 = !DILocation(line: 413, column: 3, scope: !697)
!797 = !DILocation(line: 413, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !697, file: !3, line: 413, column: 3)
!799 = !DILocation(line: 413, column: 3, scope: !800)
!800 = distinct !DILexicalBlock(scope: !798, file: !3, line: 413, column: 3)
!801 = !DILocation(line: 413, column: 3, scope: !802)
!802 = distinct !DILexicalBlock(scope: !798, file: !3, line: 413, column: 3)
!803 = !DILocation(line: 413, column: 3, scope: !804)
!804 = distinct !DILexicalBlock(scope: !802, file: !3, line: 413, column: 3)
!805 = !DILocation(line: 0, scope: !798)
!806 = !DILocation(line: 414, column: 14, scope: !697)
!807 = !DILocation(line: 414, column: 19, scope: !697)
!808 = !DILocation(line: 415, column: 3, scope: !697)
!809 = !DILocation(line: 415, column: 3, scope: !810)
!810 = distinct !DILexicalBlock(scope: !697, file: !3, line: 415, column: 3)
!811 = !DILocation(line: 415, column: 3, scope: !812)
!812 = distinct !DILexicalBlock(scope: !810, file: !3, line: 415, column: 3)
!813 = !DILocation(line: 415, column: 3, scope: !814)
!814 = distinct !DILexicalBlock(scope: !810, file: !3, line: 415, column: 3)
!815 = !DILocation(line: 415, column: 3, scope: !816)
!816 = distinct !DILexicalBlock(scope: !814, file: !3, line: 415, column: 3)
!817 = !DILocation(line: 0, scope: !810)
!818 = !DILocation(line: 416, column: 14, scope: !697)
!819 = !DILocation(line: 416, column: 19, scope: !697)
!820 = !DILocation(line: 417, column: 3, scope: !697)
!821 = !DILocation(line: 417, column: 3, scope: !822)
!822 = distinct !DILexicalBlock(scope: !697, file: !3, line: 417, column: 3)
!823 = !DILocation(line: 417, column: 3, scope: !824)
!824 = distinct !DILexicalBlock(scope: !822, file: !3, line: 417, column: 3)
!825 = !DILocation(line: 417, column: 3, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !3, line: 417, column: 3)
!827 = !DILocation(line: 417, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !826, file: !3, line: 417, column: 3)
!829 = !DILocation(line: 0, scope: !822)
!830 = !DILocation(line: 418, column: 15, scope: !697)
!831 = !DILocation(line: 419, column: 3, scope: !697)
!832 = !DILocation(line: 419, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !697, file: !3, line: 419, column: 3)
!834 = !DILocation(line: 419, column: 3, scope: !835)
!835 = distinct !DILexicalBlock(scope: !833, file: !3, line: 419, column: 3)
!836 = !DILocation(line: 419, column: 3, scope: !837)
!837 = distinct !DILexicalBlock(scope: !833, file: !3, line: 419, column: 3)
!838 = !DILocation(line: 419, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !837, file: !3, line: 419, column: 3)
!840 = !DILocation(line: 0, scope: !833)
!841 = !DILocation(line: 421, column: 8, scope: !842)
!842 = distinct !DILexicalBlock(scope: !697, file: !3, line: 421, column: 7)
!843 = !DILocation(line: 421, column: 7, scope: !697)
!844 = !DILocation(line: 421, column: 20, scope: !842)
!845 = !DILocation(line: 421, column: 22, scope: !842)
!846 = !DILocation(line: 421, column: 18, scope: !842)
!847 = !DILocation(line: 423, column: 10, scope: !848)
!848 = distinct !DILexicalBlock(scope: !697, file: !3, line: 423, column: 7)
!849 = !DILocation(line: 423, column: 7, scope: !697)
!850 = !DILocation(line: 424, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !3, line: 423, column: 15)
!852 = !DILocation(line: 425, column: 5, scope: !851)
!853 = !DILocation(line: 430, column: 8, scope: !697)
!854 = !DILocation(line: 430, column: 7, scope: !697)
!855 = !DILocation(line: 432, column: 10, scope: !856)
!856 = distinct !DILexicalBlock(scope: !697, file: !3, line: 432, column: 7)
!857 = !DILocation(line: 432, column: 19, scope: !856)
!858 = !DILocation(line: 432, column: 13, scope: !856)
!859 = !DILocation(line: 438, column: 6, scope: !697)
!860 = !DILocation(line: 439, column: 10, scope: !717)
!861 = !DILocation(line: 439, column: 7, scope: !697)
!862 = !DILocation(line: 440, column: 23, scope: !716)
!863 = !DILocation(line: 0, scope: !716)
!864 = !DILocation(line: 441, column: 14, scope: !865)
!865 = distinct !DILexicalBlock(scope: !716, file: !3, line: 441, column: 9)
!866 = !DILocation(line: 441, column: 9, scope: !716)
!867 = !DILocation(line: 443, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 443, column: 7)
!869 = distinct !DILexicalBlock(scope: !865, file: !3, line: 441, column: 18)
!870 = !DILocation(line: 0, scope: !869)
!871 = !DILocation(line: 443, column: 15, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !3, line: 443, column: 7)
!873 = !DILocation(line: 443, column: 37, scope: !872)
!874 = !DILocation(line: 443, column: 36, scope: !872)
!875 = !DILocation(line: 443, column: 25, scope: !872)
!876 = !DILocation(line: 443, column: 30, scope: !872)
!877 = !DILocation(line: 443, column: 7, scope: !872)
!878 = distinct !{!878, !867, !879}
!879 = !DILocation(line: 443, column: 38, scope: !868)
!880 = !DILocation(line: 444, column: 9, scope: !869)
!881 = !DILocation(line: 445, column: 8, scope: !869)
!882 = !DILocation(line: 446, column: 7, scope: !869)
!883 = !DILocation(line: 450, column: 10, scope: !884)
!884 = distinct !DILexicalBlock(scope: !716, file: !3, line: 450, column: 9)
!885 = !DILocation(line: 450, column: 9, scope: !716)
!886 = !DILocation(line: 451, column: 9, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !3, line: 450, column: 15)
!888 = !DILocation(line: 451, column: 11, scope: !887)
!889 = !DILocation(line: 452, column: 9, scope: !887)
!890 = !DILocation(line: 452, column: 11, scope: !887)
!891 = !DILocation(line: 453, column: 12, scope: !892)
!892 = distinct !DILexicalBlock(scope: !887, file: !3, line: 453, column: 11)
!893 = !DILocation(line: 453, column: 11, scope: !887)
!894 = !DILocation(line: 454, column: 8, scope: !895)
!895 = distinct !DILexicalBlock(scope: !892, file: !3, line: 453, column: 16)
!896 = !DILocation(line: 455, column: 4, scope: !895)
!897 = !DILocation(line: 456, column: 2, scope: !895)
!898 = !DILocation(line: 457, column: 20, scope: !887)
!899 = !DILocation(line: 457, column: 10, scope: !887)
!900 = !DILocation(line: 458, column: 18, scope: !887)
!901 = !DILocation(line: 458, column: 21, scope: !887)
!902 = !DILocation(line: 458, column: 20, scope: !887)
!903 = !DILocation(line: 458, column: 7, scope: !887)
!904 = !DILocation(line: 459, column: 8, scope: !887)
!905 = !DILocation(line: 460, column: 7, scope: !887)
!906 = !DILocation(line: 461, column: 7, scope: !716)
!907 = !DILocation(line: 467, column: 6, scope: !697)
!908 = !DILocation(line: 467, column: 8, scope: !697)
!909 = !DILocation(line: 468, column: 6, scope: !697)
!910 = !DILocation(line: 468, column: 9, scope: !697)
!911 = !DILocation(line: 469, column: 3, scope: !697)
!912 = !DILocation(line: 469, column: 11, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 469, column: 3)
!914 = distinct !DILexicalBlock(scope: !697, file: !3, line: 469, column: 3)
!915 = !DILocation(line: 469, column: 3, scope: !914)
!916 = !DILocation(line: 469, column: 34, scope: !913)
!917 = !DILocation(line: 469, column: 33, scope: !913)
!918 = !DILocation(line: 469, column: 22, scope: !913)
!919 = !DILocation(line: 469, column: 27, scope: !913)
!920 = !DILocation(line: 469, column: 3, scope: !913)
!921 = distinct !{!921, !915, !922}
!922 = !DILocation(line: 469, column: 35, scope: !914)
!923 = !DILocation(line: 471, column: 5, scope: !697)
!924 = !DILocation(line: 471, column: 7, scope: !697)
!925 = !DILocation(line: 472, column: 5, scope: !697)
!926 = !DILocation(line: 472, column: 7, scope: !697)
!927 = !DILocation(line: 473, column: 3, scope: !697)
!928 = !DILocation(line: 473, column: 13, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 473, column: 3)
!930 = distinct !DILexicalBlock(scope: !697, file: !3, line: 473, column: 3)
!931 = !DILocation(line: 473, column: 3, scope: !930)
!932 = !DILocation(line: 473, column: 26, scope: !929)
!933 = !DILocation(line: 473, column: 28, scope: !929)
!934 = !DILocation(line: 473, column: 20, scope: !929)
!935 = !DILocation(line: 473, column: 3, scope: !929)
!936 = distinct !{!936, !931, !937}
!937 = !DILocation(line: 473, column: 29, scope: !930)
!938 = !DILocation(line: 476, column: 3, scope: !697)
!939 = distinct !DISubprogram(name: "__dpd64FromString", scope: !3, file: !3, line: 493, type: !940, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !942)
!940 = !DISubroutineType(types: !941)
!941 = !{!158, !158, !24, !180}
!942 = !{!943, !944, !945, !946, !947}
!943 = !DILocalVariable(name: "result", arg: 1, scope: !939, file: !3, line: 493, type: !158)
!944 = !DILocalVariable(name: "string", arg: 2, scope: !939, file: !3, line: 493, type: !24)
!945 = !DILocalVariable(name: "set", arg: 3, scope: !939, file: !3, line: 494, type: !180)
!946 = !DILocalVariable(name: "dc", scope: !939, file: !3, line: 495, type: !181)
!947 = !DILocalVariable(name: "dn", scope: !939, file: !3, line: 496, type: !169)
!948 = !DILocation(line: 0, scope: !939)
!949 = !DILocation(line: 495, column: 3, scope: !939)
!950 = !DILocation(line: 496, column: 3, scope: !939)
!951 = !DILocation(line: 498, column: 3, scope: !939)
!952 = !DILocation(line: 499, column: 17, scope: !939)
!953 = !DILocation(line: 499, column: 6, scope: !939)
!954 = !DILocation(line: 499, column: 11, scope: !939)
!955 = !DILocation(line: 501, column: 3, scope: !939)
!956 = !DILocation(line: 503, column: 3, scope: !939)
!957 = !DILocation(line: 504, column: 10, scope: !958)
!958 = distinct !DILexicalBlock(scope: !939, file: !3, line: 504, column: 7)
!959 = !DILocation(line: 504, column: 16, scope: !958)
!960 = !DILocation(line: 504, column: 7, scope: !939)
!961 = !DILocation(line: 505, column: 5, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 504, column: 21)
!963 = !DILocation(line: 506, column: 5, scope: !962)
!964 = !DILocation(line: 508, column: 3, scope: !939)
!965 = !DILocation(line: 507, column: 3, scope: !939)
!966 = distinct !DISubprogram(name: "decimal64IsCanonical", scope: !3, file: !3, line: 516, type: !967, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{!26, !529}
!969 = !{!970, !971, !972, !973}
!970 = !DILocalVariable(name: "d64", arg: 1, scope: !966, file: !3, line: 516, type: !529)
!971 = !DILocalVariable(name: "dn", scope: !966, file: !3, line: 517, type: !169)
!972 = !DILocalVariable(name: "canon", scope: !966, file: !3, line: 518, type: !159)
!973 = !DILocalVariable(name: "dc", scope: !966, file: !3, line: 519, type: !181)
!974 = !DILocation(line: 0, scope: !966)
!975 = !DILocation(line: 517, column: 3, scope: !966)
!976 = !DILocation(line: 518, column: 3, scope: !966)
!977 = !DILocation(line: 519, column: 3, scope: !966)
!978 = !DILocation(line: 520, column: 3, scope: !966)
!979 = !DILocation(line: 521, column: 3, scope: !966)
!980 = !DILocation(line: 522, column: 3, scope: !966)
!981 = !DILocation(line: 523, column: 17, scope: !966)
!982 = !DILocation(line: 523, column: 10, scope: !966)
!983 = !DILocation(line: 523, column: 46, scope: !966)
!984 = !DILocation(line: 524, column: 3, scope: !966)
!985 = !DILocation(line: 523, column: 3, scope: !966)
!986 = distinct !DISubprogram(name: "decimal64Canonical", scope: !3, file: !3, line: 533, type: !987, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !989)
!987 = !DISubroutineType(types: !988)
!988 = !{!158, !158, !529}
!989 = !{!990, !991, !992, !993}
!990 = !DILocalVariable(name: "result", arg: 1, scope: !986, file: !3, line: 533, type: !158)
!991 = !DILocalVariable(name: "d64", arg: 2, scope: !986, file: !3, line: 533, type: !529)
!992 = !DILocalVariable(name: "dn", scope: !986, file: !3, line: 534, type: !169)
!993 = !DILocalVariable(name: "dc", scope: !986, file: !3, line: 535, type: !181)
!994 = !DILocation(line: 0, scope: !986)
!995 = !DILocation(line: 534, column: 3, scope: !986)
!996 = !DILocation(line: 535, column: 3, scope: !986)
!997 = !DILocation(line: 536, column: 3, scope: !986)
!998 = !DILocation(line: 537, column: 3, scope: !986)
!999 = !DILocation(line: 538, column: 3, scope: !986)
!1000 = !DILocation(line: 540, column: 3, scope: !986)
!1001 = !DILocation(line: 539, column: 3, scope: !986)
!1002 = distinct !DISubprogram(name: "decimal64FromNumber", scope: !3, file: !3, line: 922, type: !156, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1003)
!1003 = !{!1004, !1005, !1006, !1007}
!1004 = !DILocalVariable(name: "d64", arg: 1, scope: !1002, file: !3, line: 922, type: !158)
!1005 = !DILocalVariable(name: "dn", arg: 2, scope: !1002, file: !3, line: 922, type: !167)
!1006 = !DILocalVariable(name: "set", arg: 3, scope: !1002, file: !3, line: 923, type: !180)
!1007 = !DILocalVariable(name: "u", scope: !1002, file: !3, line: 930, type: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !3, line: 926, size: 64, elements: !1009)
!1009 = !{!1010, !1014}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_Dec", scope: !1008, file: !3, line: 928, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT64", file: !1012, line: 26, baseType: !1013)
!1012 = !DIFile(filename: "./bid-dpd.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1013 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !1008, file: !3, line: 929, baseType: !159, size: 64)
!1015 = !DILocation(line: 0, scope: !1002)
!1016 = !DILocation(line: 926, column: 3, scope: !1002)
!1017 = !DILocation(line: 932, column: 3, scope: !1002)
!1018 = !DILocation(line: 936, column: 31, scope: !1002)
!1019 = !DILocation(line: 936, column: 3, scope: !1002)
!1020 = !DILocation(line: 939, column: 3, scope: !1002)
!1021 = !DILocation(line: 942, column: 24, scope: !1002)
!1022 = !DILocation(line: 942, column: 33, scope: !1002)
!1023 = !DILocation(line: 942, column: 3, scope: !1002)
!1024 = !DILocation(line: 945, column: 12, scope: !1002)
!1025 = !DILocation(line: 948, column: 1, scope: !1002)
!1026 = !DILocation(line: 947, column: 3, scope: !1002)
!1027 = distinct !DISubprogram(name: "decimal64ToNumber", scope: !3, file: !3, line: 951, type: !526, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1028)
!1028 = !{!1029, !1030, !1031}
!1029 = !DILocalVariable(name: "bid64", arg: 1, scope: !1027, file: !3, line: 951, type: !529)
!1030 = !DILocalVariable(name: "dn", arg: 2, scope: !1027, file: !3, line: 951, type: !528)
!1031 = !DILocalVariable(name: "u", scope: !1027, file: !3, line: 958, type: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !3, line: 954, size: 64, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_Dec", scope: !1032, file: !3, line: 956, baseType: !1011, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !1032, file: !3, line: 957, baseType: !159, size: 64)
!1036 = !DILocation(line: 0, scope: !1027)
!1037 = !DILocation(line: 954, column: 3, scope: !1027)
!1038 = !DILocation(line: 962, column: 33, scope: !1027)
!1039 = !DILocation(line: 962, column: 3, scope: !1027)
!1040 = !DILocation(line: 965, column: 3, scope: !1027)
!1041 = !DILocation(line: 968, column: 24, scope: !1027)
!1042 = !DILocation(line: 968, column: 33, scope: !1027)
!1043 = !DILocation(line: 968, column: 3, scope: !1027)
!1044 = !DILocation(line: 970, column: 10, scope: !1027)
!1045 = !DILocation(line: 971, column: 1, scope: !1027)
!1046 = !DILocation(line: 970, column: 3, scope: !1027)
!1047 = distinct !DISubprogram(name: "decimal64ToString", scope: !3, file: !3, line: 974, type: !685, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DILocalVariable(name: "d64", arg: 1, scope: !1047, file: !3, line: 974, type: !529)
!1050 = !DILocalVariable(name: "string", arg: 2, scope: !1047, file: !3, line: 974, type: !21)
!1051 = !DILocalVariable(name: "dn", scope: !1047, file: !3, line: 976, type: !169)
!1052 = !DILocation(line: 0, scope: !1047)
!1053 = !DILocation(line: 976, column: 3, scope: !1047)
!1054 = !DILocation(line: 977, column: 3, scope: !1047)
!1055 = !DILocation(line: 978, column: 3, scope: !1047)
!1056 = !DILocation(line: 980, column: 1, scope: !1047)
!1057 = !DILocation(line: 979, column: 3, scope: !1047)
!1058 = distinct !DISubprogram(name: "decimal64ToEngString", scope: !3, file: !3, line: 983, type: !685, scopeLine: 984, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DILocalVariable(name: "d64", arg: 1, scope: !1058, file: !3, line: 983, type: !529)
!1061 = !DILocalVariable(name: "string", arg: 2, scope: !1058, file: !3, line: 983, type: !21)
!1062 = !DILocalVariable(name: "dn", scope: !1058, file: !3, line: 985, type: !169)
!1063 = !DILocation(line: 0, scope: !1058)
!1064 = !DILocation(line: 985, column: 3, scope: !1058)
!1065 = !DILocation(line: 986, column: 3, scope: !1058)
!1066 = !DILocation(line: 987, column: 3, scope: !1058)
!1067 = !DILocation(line: 989, column: 1, scope: !1058)
!1068 = !DILocation(line: 988, column: 3, scope: !1058)
!1069 = distinct !DISubprogram(name: "decimal64FromString", scope: !3, file: !3, line: 992, type: !940, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075}
!1071 = !DILocalVariable(name: "result", arg: 1, scope: !1069, file: !3, line: 992, type: !158)
!1072 = !DILocalVariable(name: "string", arg: 2, scope: !1069, file: !3, line: 992, type: !24)
!1073 = !DILocalVariable(name: "set", arg: 3, scope: !1069, file: !3, line: 993, type: !180)
!1074 = !DILocalVariable(name: "dc", scope: !1069, file: !3, line: 995, type: !181)
!1075 = !DILocalVariable(name: "dn", scope: !1069, file: !3, line: 996, type: !169)
!1076 = !DILocation(line: 0, scope: !1069)
!1077 = !DILocation(line: 995, column: 3, scope: !1069)
!1078 = !DILocation(line: 996, column: 3, scope: !1069)
!1079 = !DILocation(line: 998, column: 3, scope: !1069)
!1080 = !DILocation(line: 999, column: 19, scope: !1069)
!1081 = !DILocation(line: 999, column: 6, scope: !1069)
!1082 = !DILocation(line: 999, column: 12, scope: !1069)
!1083 = !DILocation(line: 1001, column: 3, scope: !1069)
!1084 = !DILocation(line: 1002, column: 3, scope: !1069)
!1085 = !DILocation(line: 1003, column: 10, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 1003, column: 7)
!1087 = !DILocation(line: 1003, column: 17, scope: !1086)
!1088 = !DILocation(line: 1003, column: 7, scope: !1069)
!1089 = !DILocation(line: 1005, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 1004, column: 5)
!1091 = !DILocation(line: 1006, column: 5, scope: !1090)
!1092 = !DILocation(line: 1008, column: 1, scope: !1069)
!1093 = !DILocation(line: 1007, column: 3, scope: !1069)
