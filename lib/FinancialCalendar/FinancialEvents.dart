import 'package:abovhack/FinancialCalendar/FinancialCalendarPage.dart';
import 'package:flutter/material.dart';

final flagImage = Image.asset(
  'images/malaysian_flag.png',
  width: 38,
  height: 24,
  fit: BoxFit.cover,
);
List<FinancialEventItem> financialEvents = [
  FinancialEventItem(
    title: 'Malaysia GDP Growth Rate Q4 2023',
    dateTime: 'March 25, 2024 \n03:00 GMT+8',
    image: flagImage,
    previousPrice: '4.5%',
    currentPrice: '4.8%',
    forecastPrice: '4.7%',
    impact: ImpactLevel.High,
  ),
  FinancialEventItem(
    title: 'Malaysia Unemployment Rate February 2024',
    dateTime: 'March 25, 2024 \n03:00 GMT+8',
    image: flagImage,
    previousPrice: '3.8%',
    currentPrice: '3.6%',
    forecastPrice: '3.8%',
    impact: ImpactLevel.Med,
  ),
  FinancialEventItem(
    title: 'Malaysia Interest Rate Decision',
    dateTime: 'March 25, 2024 \n03:00 GMT+8',
    image: flagImage,
    previousPrice: '2.5%',
    currentPrice: '2.5%',
    forecastPrice: '2.5%',
    impact: ImpactLevel.High,
  ),
  FinancialEventItem(
    title: 'Malaysia Consumer Price Index (CPI) May 2024',
    dateTime: 'March 25, 2024 \n03:00 GMT+8',
    image: flagImage,
    previousPrice: '2.0%',
    currentPrice: '2.1%',
    forecastPrice: '2.2%',
    impact: ImpactLevel.Med,
  ),
  FinancialEventItem(
    title: 'Malaysia Manufacturing PMI June 2024',
    dateTime: 'March 25, 2024 \n03:00 GMT+8',
    image: flagImage,
    previousPrice: '51.5%',
    currentPrice: '52.3%',
    forecastPrice: '52.0%',
    impact: ImpactLevel.Med,
  ),
  FinancialEventItem(
    title: 'Malaysia Trade Balance July 2024',
    dateTime: 'March 25, 2024 \n03:00 GMT+8',
    image: flagImage,
    previousPrice: '\$2.5B',
    currentPrice: '\$3.2B',
    forecastPrice: '\$2.8B',
    impact: ImpactLevel.Low,
  ),
  FinancialEventItem(
    title: 'Malaysia Retail Sales August 2024',
    dateTime: 'March 25, 2024 \n03:00 GMT+8',
    image: flagImage,
    previousPrice: '6.5%',
    currentPrice: '6.8%',
    forecastPrice: '6.0%',
    impact: ImpactLevel.Med,
  ),
];
