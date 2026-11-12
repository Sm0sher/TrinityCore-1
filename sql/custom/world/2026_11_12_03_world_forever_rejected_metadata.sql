-- Persist loader defaults and archive unusable records in Forever 70888.
START TRANSACTION;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=82 AND d.IsCustom=1 AND d.SpellForVisuals=420610;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=84 AND d.IsCustom=1 AND d.SpellForVisuals=449122;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=86 AND d.IsCustom=1 AND d.SpellForVisuals=294534;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=87 AND d.IsCustom=1 AND d.SpellForVisuals=0;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=88 AND d.IsCustom=1 AND d.SpellForVisuals=0;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=96 AND d.IsCustom=1 AND d.SpellForVisuals=296582;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=97 AND d.IsCustom=1 AND d.SpellForVisuals=296579;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=98 AND d.IsCustom=1 AND d.SpellForVisuals=425662;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=99 AND d.IsCustom=1 AND d.SpellForVisuals=473415;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=158 AND d.IsCustom=1 AND d.SpellForVisuals=1235695;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=165 AND d.IsCustom=1 AND d.SpellForVisuals=443437;
UPDATE areatrigger_create_properties d SET d.MorphCurveId=0 WHERE d.Id=658 AND d.IsCustom=0 AND d.MorphCurveId=78101;
UPDATE areatrigger_create_properties d SET d.MoveCurveId=0 WHERE d.Id=1315 AND d.IsCustom=0 AND d.MoveCurveId=393;
UPDATE areatrigger_create_properties d SET d.MoveCurveId=0 WHERE d.Id=1316 AND d.IsCustom=0 AND d.MoveCurveId=392;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=1532 AND d.IsCustom=0 AND d.ScaleCurveId=32462;
UPDATE areatrigger_create_properties d SET d.MorphCurveId=0 WHERE d.Id=1569 AND d.IsCustom=0 AND d.MorphCurveId=469;
UPDATE areatrigger_create_properties d SET d.MoveCurveId=0 WHERE d.Id=1569 AND d.IsCustom=0 AND d.MoveCurveId=470;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=5295 AND d.IsCustom=0 AND d.SpellForVisuals=0;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=5298 AND d.IsCustom=0 AND d.SpellForVisuals=197180;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=5315 AND d.IsCustom=0 AND d.SpellForVisuals=197180;
UPDATE areatrigger_create_properties d SET d.MoveCurveId=0 WHERE d.Id=5484 AND d.IsCustom=0 AND d.MoveCurveId=1656;
UPDATE areatrigger_create_properties d SET d.MorphCurveId=0 WHERE d.Id=7349 AND d.IsCustom=0 AND d.MorphCurveId=1905;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=7415 AND d.IsCustom=0 AND d.ScaleCurveId=1958;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=8791 AND d.IsCustom=0 AND d.ScaleCurveId=2294;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=8812 AND d.IsCustom=0 AND d.ScaleCurveId=2537;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=8812 AND d.IsCustom=0 AND d.SpellForVisuals=0;
UPDATE areatrigger_create_properties d SET d.MoveCurveId=0 WHERE d.Id=8851 AND d.IsCustom=0 AND d.MoveCurveId=2618;
UPDATE areatrigger_create_properties d SET d.MorphCurveId=0 WHERE d.Id=8879 AND d.IsCustom=0 AND d.MorphCurveId=2319;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=11243 AND d.IsCustom=0 AND d.ScaleCurveId=3477;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=11983 AND d.IsCustom=0 AND d.SpellForVisuals=256948;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=12011 AND d.IsCustom=0 AND d.ScaleCurveId=5089;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=13118 AND d.IsCustom=0 AND d.ScaleCurveId=6328;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=13147 AND d.IsCustom=0 AND d.ScaleCurveId=6336;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=13154 AND d.IsCustom=0 AND d.SpellForVisuals=267891;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=13157 AND d.IsCustom=0 AND d.SpellForVisuals=267891;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=16508 AND d.IsCustom=0 AND d.SpellForVisuals=294566;
UPDATE areatrigger_create_properties d SET d.MorphCurveId=0 WHERE d.Id=18034 AND d.IsCustom=0 AND d.MorphCurveId=13613;
UPDATE areatrigger_create_properties d SET d.MoveCurveId=0 WHERE d.Id=21832 AND d.IsCustom=0 AND d.MoveCurveId=21753;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=25138 AND d.IsCustom=0 AND d.SpellForVisuals=372784;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=25356 AND d.IsCustom=0 AND d.ScaleCurveId=33927;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=25515 AND d.IsCustom=0 AND d.ScaleCurveId=34322;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=26505 AND d.IsCustom=0 AND d.ScaleCurveId=53094;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=29904 AND d.IsCustom=0 AND d.ScaleCurveId=69049;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=29906 AND d.IsCustom=0 AND d.ScaleCurveId=69050;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=30324 AND d.IsCustom=0 AND d.SpellForVisuals=424909;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=32832 AND d.IsCustom=0 AND d.SpellForVisuals=443405;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=33200 AND d.IsCustom=0 AND d.SpellForVisuals=447445;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=33613 AND d.IsCustom=0 AND d.SpellForVisuals=424909;
UPDATE areatrigger_create_properties d SET d.MorphCurveId=0 WHERE d.Id=33740 AND d.IsCustom=0 AND d.MorphCurveId=76237;
UPDATE areatrigger_create_properties d SET d.MorphCurveId=0 WHERE d.Id=33742 AND d.IsCustom=0 AND d.MorphCurveId=78103;
UPDATE areatrigger_create_properties d SET d.MorphCurveId=0 WHERE d.Id=34681 AND d.IsCustom=0 AND d.MorphCurveId=78886;
UPDATE areatrigger_create_properties d SET d.MorphCurveId=0 WHERE d.Id=34682 AND d.IsCustom=0 AND d.MorphCurveId=78887;
UPDATE areatrigger_create_properties d SET d.MorphCurveId=0 WHERE d.Id=34683 AND d.IsCustom=0 AND d.MorphCurveId=76237;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=36165 AND d.IsCustom=0 AND d.SpellForVisuals=1217240;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=36166 AND d.IsCustom=0 AND d.SpellForVisuals=1217240;
UPDATE areatrigger_create_properties d SET d.ScaleCurveId=0 WHERE d.Id=36181 AND d.IsCustom=0 AND d.ScaleCurveId=81441;
UPDATE areatrigger_create_properties d SET d.SpellForVisuals=NULL WHERE d.Id=38667 AND d.IsCustom=0 AND d.SpellForVisuals=1217240;
DELETE d FROM conditions d WHERE (d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27892 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127618 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27892 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127619 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27892 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127618 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27892 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127619 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27893 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127620 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27893 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127621 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27893 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127620 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27893 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127621 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27928 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127618 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27928 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127619 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27928 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127618 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27928 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127619 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27929 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127620 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27929 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127621 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27929 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127620 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27929 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127621 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27935 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127618 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27935 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127619 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27935 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127618 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27935 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127619 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27936 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127620 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27936 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127621 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27936 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127620 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=27936 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127621 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31411 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=63610 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31411 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=63610 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31412 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=96886 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31412 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=96886 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31413 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=63611 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31413 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=63611 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31414 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=63609 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31414 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=63609 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31628 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=63692 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31628 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=63696 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31628 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=96572 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31628 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=63692 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31628 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=63696 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=31628 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=96572 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=39635 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=52502 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=39635 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=52502 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=39849 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=52503 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=39849 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=52503 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=40156 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=96675 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=40156 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=96675 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=40187 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=96676 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=40187 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=96676 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=40189 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=96677 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=40189 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=96677 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=40190 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=96678 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=40190 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=96678 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=42391 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=64984 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=42391 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=64984 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=42808 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=74518 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=42808 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=74519 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=42808 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=74520 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=42808 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=74518 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=42808 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=74519 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=42808 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=74520 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=48597 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=56503 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=48597 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=56503 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=48605 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=56502 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=48605 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=56502 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=50793 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=126813 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=50793 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=126813 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=50794 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=126812 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=50794 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=126812 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=51861 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=98547 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=51861 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=98547 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=52452 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=98549 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=52452 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=98549 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=52453 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=98546 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=52453 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=98546 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=52454 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=98548 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=52454 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=98548 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53177 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=87533 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53177 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=87534 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53177 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=87533 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53177 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=87534 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53185 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=87535 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53185 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=87535 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=87536 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=87537 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=87538 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=87539 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=87540 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=87541 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=87542 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=87543 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=87536 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=87537 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=87538 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=87539 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=87540 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=87541 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=87542 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=53609 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=87543 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=54258 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=102906 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=54258 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=102906 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=54264 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=102905 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=54264 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=102905 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=54265 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=102904 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=54265 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=102904 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=54266 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=102901 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=54266 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=102901 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=54267 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=102902 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=54267 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=102902 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=56711 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=132012 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=56711 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=132012 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=56713 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=132013 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=56713 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=132013 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=57068 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127032 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=57068 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127032 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=57071 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127035 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=57071 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127035 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=57072 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=127033 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=57072 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=127033 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=57885 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=121192 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=57885 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=121192 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=57891 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=121193 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=57891 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=121193 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=62577 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=136515 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=62577 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=136515 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=62603 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=136515 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=62603 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=136515 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=65611 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=107136 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=65611 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=107136 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=65613 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=107137 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=65613 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=107137 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=65614 AND d.ConditionTypeOrReference=31 AND d.ConditionValue1=3 AND d.ConditionValue3=107135 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=13 AND d.SourceGroup=1 AND d.SourceEntry=65614 AND d.ConditionTypeOrReference=51 AND d.ConditionValue1=5 AND d.ConditionValue3=107135 AND d.ScriptName='');
DELETE d FROM creature d WHERE (d.guid=20038257 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038312 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038313 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038326 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038347 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038381 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038403 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038404 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038419 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038420 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038450 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038451 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038452 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038453 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038464 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038465 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038466 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038467 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038468 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038469 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038470 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038471 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038472 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038473 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038474 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038475 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038476 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20038511 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039002 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039039 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039130 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039131 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039132 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039133 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039134 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039135 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039137 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039138 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039199 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039200 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039201 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039203 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039204 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039205 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039206 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039207 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039208 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039209 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039210 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039211 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039228 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039298 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039445 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039446 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039447 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039534 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039537 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039539 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039540 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039542 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039543 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039544 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039548 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039813 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039814 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039815 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039816 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='') OR
(d.guid=20039817 AND d.map=269 AND d.spawnDifficulties='0' AND d.ScriptName='');
UPDATE gameobject_template_addon d SET d.WorldEffectID=0 WHERE d.entry=193611 AND d.WorldEffectID=3661;
DELETE d FROM item_template_addon d WHERE (d.Id=11603) OR
(d.Id=13254) OR
(d.Id=13399) OR
(d.Id=14576) OR
(d.Id=17068) OR
(d.Id=17075) OR
(d.Id=17076) OR
(d.Id=17982) OR
(d.Id=19901) OR
(d.Id=19921) OR
(d.Id=862);
DELETE d FROM lfg_dungeon_rewards d WHERE (d.dungeonId=258) OR
(d.dungeonId=259) OR
(d.dungeonId=260) OR
(d.dungeonId=261) OR
(d.dungeonId=262) OR
(d.dungeonId=285) OR
(d.dungeonId=286) OR
(d.dungeonId=287) OR
(d.dungeonId=288);
UPDATE quest_template_addon d SET d.ProvidedItemCount=0 WHERE d.ID=11122 AND d.ProvidedItemCount=1;
UPDATE quest_template_addon d SET d.ProvidedItemCount=0 WHERE d.ID=11293 AND d.ProvidedItemCount=1;
UPDATE quest_template_addon d SET d.ProvidedItemCount=0 WHERE d.ID=11294 AND d.ProvidedItemCount=1;
UPDATE quest_template_addon d SET d.ProvidedItemCount=0 WHERE d.ID=11318 AND d.ProvidedItemCount=1;
UPDATE quest_template_addon d SET d.ProvidedItemCount=0 WHERE d.ID=11407 AND d.ProvidedItemCount=1;
UPDATE quest_template_addon d SET d.ProvidedItemCount=0 WHERE d.ID=11408 AND d.ProvidedItemCount=1;
UPDATE quest_template_addon d SET d.ProvidedItemCount=0 WHERE d.ID=11409 AND d.ProvidedItemCount=1;
UPDATE quest_template_addon d SET d.ProvidedItemCount=0 WHERE d.ID=11412 AND d.ProvidedItemCount=1;
UPDATE quest_template_addon d SET d.ProvidedItemCount=0 WHERE d.ID=12491 AND d.ProvidedItemCount=1;
UPDATE quest_template_addon d SET d.ProvidedItemCount=0 WHERE d.ID=12492 AND d.ProvidedItemCount=1;
UPDATE quest_template_addon d SET d.ProvidedItemCount=0 WHERE d.ID=13808 AND d.ProvidedItemCount=1;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=86784 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=91741 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=92742 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=92910 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=94490 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=95204 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=96241 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=96391 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=96659 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=96876 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=97288 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=97891 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=98423 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=98435 AND d.ProvidedItemCount=0;
UPDATE quest_template_addon d SET d.ProvidedItemCount=1 WHERE d.ID=99158 AND d.ProvidedItemCount=0;
DELETE d FROM quest_visual_effect d WHERE (d.ID=252698) OR
(d.ID=252811) OR
(d.ID=252812) OR
(d.ID=252813) OR
(d.ID=257048) OR
(d.ID=257049) OR
(d.ID=257050) OR
(d.ID=258008) OR
(d.ID=258064) OR
(d.ID=258927);
DELETE d FROM reputation_reward_rate d WHERE (d.faction=1037) OR
(d.faction=1052) OR
(d.faction=1073) OR
(d.faction=1090) OR
(d.faction=1091) OR
(d.faction=1098) OR
(d.faction=1104) OR
(d.faction=1105) OR
(d.faction=1106) OR
(d.faction=1119) OR
(d.faction=941) OR
(d.faction=970) OR
(d.faction=978);
DELETE d FROM reputation_spillover_template d WHERE (d.faction=1050) OR
(d.faction=1064) OR
(d.faction=1067) OR
(d.faction=1068) OR
(d.faction=1085) OR
(d.faction=1094) OR
(d.faction=1104) OR
(d.faction=1105) OR
(d.faction=1124) OR
(d.faction=1126) OR
(d.faction=1133) OR
(d.faction=1134) OR
(d.faction=911) OR
(d.faction=930) OR
(d.faction=932) OR
(d.faction=934);
DELETE d FROM smart_scripts d WHERE (d.entryorguid=10098200 AND d.source_type=9 AND d.id=3 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=10098200 AND c.SourceId=9 AND c.SourceGroup=4)) OR
(d.entryorguid=10098200 AND d.source_type=9 AND d.id=5 AND d.action_type=137 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=10098200 AND c.SourceId=9 AND c.SourceGroup=6)) OR
(d.entryorguid=10106100 AND d.source_type=9 AND d.id=4 AND d.action_type=137 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=10106100 AND c.SourceId=9 AND c.SourceGroup=5)) OR
(d.entryorguid=10233301 AND d.source_type=9 AND d.id=3 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=10233301 AND c.SourceId=9 AND c.SourceGroup=4)) OR
(d.entryorguid=10235800 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=10235800 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=10235800 AND d.source_type=9 AND d.id=1 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=10235800 AND c.SourceId=9 AND c.SourceGroup=2)) OR
(d.entryorguid=10235801 AND d.source_type=9 AND d.id=1 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=10235801 AND c.SourceId=9 AND c.SourceGroup=2)) OR
(d.entryorguid=10290500 AND d.source_type=9 AND d.id=1 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=10290500 AND c.SourceId=9 AND c.SourceGroup=2)) OR
(d.entryorguid=10590800 AND d.source_type=9 AND d.id=1 AND d.action_type=137 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=10590800 AND c.SourceId=9 AND c.SourceGroup=2)) OR
(d.entryorguid=10590800 AND d.source_type=9 AND d.id=5 AND d.action_type=137 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=10590800 AND c.SourceId=9 AND c.SourceGroup=6)) OR
(d.entryorguid=11424600 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=11424600 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=11549000 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=11549000 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=12492200 AND d.source_type=9 AND d.id=4 AND d.action_type=137 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=12492200 AND c.SourceId=9 AND c.SourceGroup=5)) OR
(d.entryorguid=12492200 AND d.source_type=9 AND d.id=5 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=12492200 AND c.SourceId=9 AND c.SourceGroup=6)) OR
(d.entryorguid=13912700 AND d.source_type=9 AND d.id=1 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=13912700 AND c.SourceId=9 AND c.SourceGroup=2)) OR
(d.entryorguid=14971802 AND d.source_type=9 AND d.id=2 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=14971802 AND c.SourceId=9 AND c.SourceGroup=3)) OR
(d.entryorguid=15065500 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=15065500 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=15065501 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=15065501 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=1507400 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=1507400 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=1507402 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=1507402 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=1507404 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=1507404 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=1507500 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=1507500 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=1507502 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=1507502 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=1507504 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=1507504 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=23102 AND d.source_type=0 AND d.id=2 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=23102 AND c.SourceId=0 AND c.SourceGroup=3)) OR
(d.entryorguid=2641700 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641700 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641701 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641701 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641702 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641702 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641703 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641703 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641704 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641704 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641705 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641705 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641706 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641706 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641707 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641707 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641708 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641708 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641709 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641709 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641710 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641710 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641711 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641711 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641712 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641712 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641713 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641713 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641714 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641714 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641715 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641715 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641716 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641716 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641717 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641717 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641718 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641718 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=2641719 AND d.source_type=9 AND d.id=0 AND d.action_type=62 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=2641719 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=42413 AND d.source_type=0 AND d.id=6 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=42413 AND c.SourceId=0 AND c.SourceGroup=7)) OR
(d.entryorguid=42515 AND d.source_type=0 AND d.id=6 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=42515 AND c.SourceId=0 AND c.SourceGroup=7)) OR
(d.entryorguid=4251500 AND d.source_type=9 AND d.id=1 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=4251500 AND c.SourceId=9 AND c.SourceGroup=2)) OR
(d.entryorguid=4251500 AND d.source_type=9 AND d.id=3 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=4251500 AND c.SourceId=9 AND c.SourceGroup=4)) OR
(d.entryorguid=45994600 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=45994600 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=45994600 AND d.source_type=9 AND d.id=1 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=45994600 AND c.SourceId=9 AND c.SourceGroup=2)) OR
(d.entryorguid=6168000 AND d.source_type=9 AND d.id=1 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=6168000 AND c.SourceId=9 AND c.SourceGroup=2)) OR
(d.entryorguid=6178800 AND d.source_type=9 AND d.id=1 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=6178800 AND c.SourceId=9 AND c.SourceGroup=2)) OR
(d.entryorguid=6492900 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=6492900 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=6492901 AND d.source_type=9 AND d.id=1 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=6492901 AND c.SourceId=9 AND c.SourceGroup=2)) OR
(d.entryorguid=6500901 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=6500901 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=6679500 AND d.source_type=9 AND d.id=0 AND d.action_type=137 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=6679500 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=6679500 AND d.source_type=9 AND d.id=1 AND d.action_type=137 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=6679500 AND c.SourceId=9 AND c.SourceGroup=2)) OR
(d.entryorguid=6713100 AND d.source_type=9 AND d.id=4 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=6713100 AND c.SourceId=9 AND c.SourceGroup=5)) OR
(d.entryorguid=6713101 AND d.source_type=9 AND d.id=4 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=6713101 AND c.SourceId=9 AND c.SourceGroup=5)) OR
(d.entryorguid=7370100 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=7370100 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=9443500 AND d.source_type=9 AND d.id=3 AND d.action_type=137 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=9443500 AND c.SourceId=9 AND c.SourceGroup=4)) OR
(d.entryorguid=9443500 AND d.source_type=9 AND d.id=5 AND d.action_type=137 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=9443500 AND c.SourceId=9 AND c.SourceGroup=6)) OR
(d.entryorguid=9443500 AND d.source_type=9 AND d.id=6 AND d.action_type=137 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=9443500 AND c.SourceId=9 AND c.SourceGroup=7)) OR
(d.entryorguid=9759900 AND d.source_type=9 AND d.id=0 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=9759900 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=9991400 AND d.source_type=9 AND d.id=0 AND d.action_type=137 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=9991400 AND c.SourceId=9 AND c.SourceGroup=1)) OR
(d.entryorguid=9991400 AND d.source_type=9 AND d.id=1 AND d.action_type=128 AND d.link=0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceEntry=9991400 AND c.SourceId=9 AND c.SourceGroup=2));
DELETE d FROM spell_threat d WHERE (d.entry=32546) OR
(d.entry=391159) OR
(d.entry=43265) OR
(d.entry=45334) OR
(d.entry=45524) OR
(d.entry=47568) OR
(d.entry=48743) OR
(d.entry=49039) OR
(d.entry=49576) OR
(d.entry=55090) OR
(d.entry=57755);
DELETE d FROM conversation_template d WHERE (d.Id=11001 AND d.FirstLineId=26136 AND d.ScriptName='') OR
(d.Id=20127 AND d.FirstLineId=51808 AND d.ScriptName='');
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=95204 AND StartItem=275521 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=95204);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=99158 AND StartItem=286355 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=99158);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=98423 AND StartItem=281030 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=98423);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=98435 AND StartItem=281139 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=98435);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=86784 AND StartItem=279937 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=86784);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=96241 AND StartItem=273015 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=96241);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=97288 AND StartItem=280438 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=97288);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=94490 AND StartItem=265476 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=94490);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=96391 AND StartItem=274268 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=96391);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=91741 AND StartItem=247857 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=91741);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=92742 AND StartItem=254545 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=92742);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=92910 AND StartItem=255155 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=92910);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=97891 AND StartItem=279020 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=97891);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=96659 AND StartItem=275019 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=96659);
INSERT INTO quest_template_addon (ID,ProvidedItemCount) SELECT ID,1 FROM quest_template WHERE ID=96876 AND StartItem=275722 AND NOT EXISTS (SELECT 1 FROM quest_template_addon WHERE ID=96876);
COMMIT;
