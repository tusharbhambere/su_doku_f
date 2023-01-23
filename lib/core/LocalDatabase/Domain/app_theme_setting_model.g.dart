// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_setting_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetAppThemeSettingCollection on Isar {
  IsarCollection<AppThemeSetting> get appThemeSettings => this.collection();
}

const AppThemeSettingSchema = CollectionSchema(
  name: r'AppThemeSetting',
  id: -7115416611255955159,
  properties: {
    r'colorIndex': PropertySchema(
      id: 0,
      name: r'colorIndex',
      type: IsarType.long,
    ),
    r'varientIndex': PropertySchema(
      id: 1,
      name: r'varientIndex',
      type: IsarType.long,
    )
  },
  estimateSize: _appThemeSettingEstimateSize,
  serialize: _appThemeSettingSerialize,
  deserialize: _appThemeSettingDeserialize,
  deserializeProp: _appThemeSettingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appThemeSettingGetId,
  getLinks: _appThemeSettingGetLinks,
  attach: _appThemeSettingAttach,
  version: '3.0.5',
);

int _appThemeSettingEstimateSize(
  AppThemeSetting object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _appThemeSettingSerialize(
  AppThemeSetting object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.colorIndex);
  writer.writeLong(offsets[1], object.varientIndex);
}

AppThemeSetting _appThemeSettingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppThemeSetting(
    colorIndex: reader.readLong(offsets[0]),
    id: id,
    varientIndex: reader.readLong(offsets[1]),
  );
  return object;
}

P _appThemeSettingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appThemeSettingGetId(AppThemeSetting object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _appThemeSettingGetLinks(AppThemeSetting object) {
  return [];
}

void _appThemeSettingAttach(
    IsarCollection<dynamic> col, Id id, AppThemeSetting object) {}

extension AppThemeSettingQueryWhereSort
    on QueryBuilder<AppThemeSetting, AppThemeSetting, QWhere> {
  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppThemeSettingQueryWhere
    on QueryBuilder<AppThemeSetting, AppThemeSetting, QWhereClause> {
  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppThemeSettingQueryFilter
    on QueryBuilder<AppThemeSetting, AppThemeSetting, QFilterCondition> {
  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      colorIndexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      colorIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      colorIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      colorIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      varientIndexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'varientIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      varientIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'varientIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      varientIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'varientIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterFilterCondition>
      varientIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'varientIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppThemeSettingQueryObject
    on QueryBuilder<AppThemeSetting, AppThemeSetting, QFilterCondition> {}

extension AppThemeSettingQueryLinks
    on QueryBuilder<AppThemeSetting, AppThemeSetting, QFilterCondition> {}

extension AppThemeSettingQuerySortBy
    on QueryBuilder<AppThemeSetting, AppThemeSetting, QSortBy> {
  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterSortBy>
      sortByColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.asc);
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterSortBy>
      sortByColorIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.desc);
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterSortBy>
      sortByVarientIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'varientIndex', Sort.asc);
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterSortBy>
      sortByVarientIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'varientIndex', Sort.desc);
    });
  }
}

extension AppThemeSettingQuerySortThenBy
    on QueryBuilder<AppThemeSetting, AppThemeSetting, QSortThenBy> {
  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterSortBy>
      thenByColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.asc);
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterSortBy>
      thenByColorIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.desc);
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterSortBy>
      thenByVarientIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'varientIndex', Sort.asc);
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QAfterSortBy>
      thenByVarientIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'varientIndex', Sort.desc);
    });
  }
}

extension AppThemeSettingQueryWhereDistinct
    on QueryBuilder<AppThemeSetting, AppThemeSetting, QDistinct> {
  QueryBuilder<AppThemeSetting, AppThemeSetting, QDistinct>
      distinctByColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorIndex');
    });
  }

  QueryBuilder<AppThemeSetting, AppThemeSetting, QDistinct>
      distinctByVarientIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'varientIndex');
    });
  }
}

extension AppThemeSettingQueryProperty
    on QueryBuilder<AppThemeSetting, AppThemeSetting, QQueryProperty> {
  QueryBuilder<AppThemeSetting, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppThemeSetting, int, QQueryOperations> colorIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorIndex');
    });
  }

  QueryBuilder<AppThemeSetting, int, QQueryOperations> varientIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'varientIndex');
    });
  }
}
