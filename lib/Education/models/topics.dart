import 'package:flutter/material.dart';

class Topic {
  final String name;
  final IconData icon;
  final List<Subtopic> subtopics;

  Topic({
    required this.name,
    required this.icon,
    required this.subtopics,
  });
}

class Subtopic {
  final String name;
  final IconData icon;
  final List<Lesson> lessons;

  Subtopic({
    required this.name,
    required this.icon,
    required this.lessons,
  });
}

class Lesson {
  final String name;
  final String content;
  bool isCompleted;

  Lesson({
    required this.name,
    required this.content,
    required this.isCompleted,
  });

  void toggleCompletionStatus() {
    isCompleted = !isCompleted;
  }
}

List<Topic> topics = [
  Topic(
    name: 'Basic Trading Concepts',
    icon: Icons.lightbulb_outline,
    subtopics: [
      Subtopic(
        name: 'Introduction to Trading',
        icon: Icons.info_outline,
        lessons: [
          Lesson(
            name: 'What is Trading?',
            content: '''
Trading refers to the buying and selling of financial instruments such as stocks, bonds, commodities, currencies, and derivatives in order to generate profits. It is a fundamental activity in financial markets and plays a crucial role in the global economy.

At its core, trading involves the exchange of assets between buyers and sellers, with the aim of capitalizing on price movements. Traders aim to buy assets at a lower price and sell them at a higher price, or vice versa, depending on market conditions and their trading strategies.

Trading can take place in various markets, including stock markets, foreign exchange markets (Forex), commodity markets, and cryptocurrency markets. Each market has its own unique characteristics, participants, and trading mechanisms.

Traders use different approaches and techniques to analyze markets and make trading decisions. These may include fundamental analysis, which involves assessing the intrinsic value of assets based on economic and financial factors, and technical analysis, which focuses on studying price charts and patterns to identify trends and potential trading opportunities.

Overall, trading is a dynamic and challenging endeavor that requires a combination of knowledge, skills, discipline, and risk management. While it offers the potential for substantial profits, it also carries inherent risks, and successful trading requires careful planning, strategy, and continuous learning.
  ''',
            isCompleted: true,
          ),
          Lesson(
            name: 'Benefits of Trading',
            content: '''
Trading in financial markets offers several benefits that can enhance your financial well-being and help you achieve your long-term goals. Let's explore three key benefits of trading:

1. Wealth Accumulation:
Trading provides individuals with the opportunity to accumulate wealth by investing in various financial instruments such as stocks, bonds, currencies, and commodities. By buying these assets at low prices and selling them at higher prices, traders can generate profits and grow their capital over time. With diligent research, strategic planning, and disciplined execution, trading can serve as a powerful tool for wealth creation.

2. Portfolio Diversification:
Diversification is a fundamental principle of investing, and trading allows investors to diversify their portfolios effectively. By spreading their investments across different asset classes, sectors, and geographic regions, traders can reduce the risk of significant losses due to market volatility or unforeseen events. Diversification enables traders to balance potential returns with risk exposure, leading to more stable and resilient investment portfolios.

3. Financial Independence:
Trading offers the potential for financial independence by providing individuals with the opportunity to earn a sustainable income from their trading activities. With dedication, education, and practice, traders can develop the skills and knowledge needed to identify profitable trading opportunities and execute successful trades. Achieving financial independence through trading requires discipline, patience, and continuous learning, but it offers the freedom to pursue your passions, goals, and dreams without financial constraints.

In conclusion, trading offers numerous benefits, including wealth accumulation, portfolio diversification, and financial independence. However, it's essential to approach trading with caution, discipline, and a long-term perspective. By understanding the risks and rewards associated with trading and developing a sound trading strategy, you can harness the power of trading to achieve your financial objectives and build a secure financial future.
  ''',
            isCompleted: true,
          ),
          Lesson(
            name: 'Common Trading Jargon',
            content: '''
Trading involves a specialized vocabulary that traders use to communicate effectively and navigate the complex world of financial markets. Here are some common trading terms you should know:

1. Bull Market:
A bull market refers to a period of rising prices in the financial markets, characterized by optimism, investor confidence, and expectations of future gains. During a bull market, asset prices tend to trend upwards, and trading activity is often driven by bullish sentiment.

2. Bear Market:
A bear market, on the other hand, is a period of declining prices in the financial markets, marked by pessimism, fear, and expectations of future losses. During a bear market, asset prices typically trend downwards, and trading activity is driven by bearish sentiment.

3. Long Position:
A long position refers to the purchase of an asset with the expectation that its price will rise over time. Traders who hold long positions profit from price increases and incur losses if the price declines. Long positions are often taken by bullish investors who anticipate positive market trends.

4. Short Position:
A short position involves selling an asset that the trader does not own, with the intention of buying it back later at a lower price. Traders who hold short positions profit from price declines and incur losses if the price increases. Short positions are often taken by bearish investors who anticipate negative market trends.

5. Volatility:
Volatility measures the degree of variation in the price of an asset over time. High volatility indicates significant price fluctuations, while low volatility suggests relatively stable prices. Traders often seek out volatile markets to capitalize on price movements and generate trading opportunities.

6. Liquidity:
Liquidity refers to the ease with which an asset can be bought or sold in the market without significantly affecting its price. Highly liquid assets can be traded quickly and efficiently, while illiquid assets may experience price slippage and delays in execution. Liquidity is essential for smooth and orderly trading operations.

7. Stop Loss:
A stop-loss order is a risk management tool used by traders to limit potential losses on a trade. It specifies a price level at which the trader's position will be automatically liquidated to prevent further losses. Stop-loss orders help traders control risk and protect their capital from adverse market movements.

8. Margin:
Margin is the amount of capital that a trader must deposit with their broker to open and maintain a leveraged position in the market. It represents a portion of the total value of the position and serves as collateral for any potential losses. Margin trading allows traders to amplify their buying power and potentially increase their returns but also carries higher risks.

These are just a few examples of common trading jargon used in financial markets. Understanding these terms is essential for effectively participating in trading activities and navigating the complexities of the market.
  ''',
            isCompleted: false,
          ),
          Lesson(
            name: 'Types of Trading Strategies',
            content: '''
Trading strategies are systematic approaches used by traders to analyze markets, identify trading opportunities, and execute trades. There are various types of trading strategies, each with its own set of rules, principles, and techniques. Here are some common types of trading strategies:

1. Day Trading:
Day trading involves buying and selling financial instruments within the same trading day, with all positions closed before the market closes. Day traders aim to capitalize on short-term price movements and typically execute multiple trades throughout the day. They rely on technical analysis, chart patterns, and market indicators to identify high-probability trading opportunities.

2. Swing Trading:
Swing trading is a medium-term trading strategy that aims to capture short- to medium-term price swings in the market. Swing traders hold positions for several days to weeks, taking advantage of price fluctuations between support and resistance levels. They use technical analysis and chart patterns to identify entry and exit points and often trade based on momentum or trend-following signals.

3. Trend Following:
Trend following is a trading strategy that seeks to profit from the persistent directionality of market trends. Trend followers identify and trade in the direction of established market trends, aiming to ride the trend for as long as possible. They use technical indicators such as moving averages, trendlines, and price patterns to confirm the direction of the trend and manage their positions accordingly.

4. Scalping:
Scalping is a high-frequency trading strategy that involves making numerous small trades throughout the day to exploit minor price movements. Scalpers aim to profit from small price fluctuations by entering and exiting trades quickly, often within seconds or minutes. They rely on tight spreads, low latency trading systems, and high trading volumes to generate profits consistently.

5. Algorithmic Trading:
Algorithmic trading, also known as algo trading or automated trading, involves using computer algorithms to execute trading orders automatically based on predefined criteria and rules. Algorithmic traders develop trading strategies and algorithms that analyze market data, generate trading signals, and execute trades without human intervention. Algo trading strategies can range from simple to complex and may include statistical arbitrage, trend following, and mean reversion strategies.

6. Position Trading:
Position trading is a long-term trading strategy that involves holding positions for weeks, months, or even years to capitalize on major market trends. Position traders focus on fundamental analysis and macroeconomic factors to identify undervalued or overvalued assets and enter trades with a long-term perspective. They aim to profit from significant price movements over time while enduring short-term market fluctuations.

These are just a few examples of trading strategies used by traders in financial markets. Each strategy has its own advantages, risks, and suitability depending on the trader's preferences, risk tolerance, and trading style.
  ''',
            isCompleted: false,
          ),
          Lesson(
            name: 'The Psychological Traps of Trading',
            content: '''
Trading involves more than just analyzing charts and financial data; it also involves managing emotions and psychology. Many traders fall into psychological traps that can negatively impact their decision-making and trading performance. Here are some common psychological traps of trading:

1. Fear of Missing Out (FOMO):
FOMO occurs when traders feel anxious or stressed about missing out on potential profits in the market. This fear often leads traders to enter trades impulsively or chase after the latest market trends without proper analysis. FOMO can result in overtrading, poor risk management, and ultimately, losses.

2. Greed:
Greed is another common psychological trap that affects traders. When driven by greed, traders become overly focused on making large profits and taking unnecessary risks. They may ignore risk management principles, overleverage their positions, or hold onto losing trades in the hope of turning them into winners. This behavior can lead to significant losses and blow up trading accounts.

3. Overconfidence:
Overconfidence occurs when traders have an inflated sense of their abilities and underestimate the risks involved in trading. Overconfident traders may take excessive risks, ignore warning signs, or deviate from their trading strategies based on gut feelings or intuition. This overestimation of skills can lead to losses and financial ruin.

4. Revenge Trading:
Revenge trading occurs when traders try to recoup losses quickly by taking impulsive and aggressive trades. After experiencing a losing streak or a significant loss, traders may feel a sense of frustration or anger and seek revenge against the market. This emotional response often results in further losses and a cycle of destructive behavior.

5. Confirmation Bias:
Confirmation bias is the tendency to seek out information that confirms existing beliefs or biases while ignoring contradictory evidence. Traders affected by confirmation bias may selectively interpret market data to support their preconceived notions or trading biases. This can lead to poor decision-making and missed opportunities in the market.

6. Loss Aversion:
Loss aversion is the tendency for traders to feel the pain of losses more intensely than the pleasure of gains. Traders may become overly cautious or risk-averse, hesitating to take trades or cutting winning positions too soon to avoid potential losses. This fear of losing can prevent traders from maximizing profits and achieving their trading goals.

To become successful traders, it's essential to recognize and overcome these psychological traps. Developing emotional discipline, maintaining a trading journal, and seeking support from mentors or trading communities can help traders manage their emotions and improve their trading psychology.
  ''',
            isCompleted: false,
          ),
        ],
      ),
      Subtopic(
        name: 'Understanding Markets',
        icon: Icons.bar_chart,
        lessons: [
          Lesson(
            name: 'Overview of Financial Markets',
            content: '''
Financial markets play a crucial role in the global economy by facilitating the exchange of funds between investors and borrowers. These markets provide a platform for buying and selling various financial instruments, including stocks, bonds, currencies, commodities, and derivatives. Here's an overview of the major components of financial markets:

1. Capital Markets:
Capital markets are where long-term securities, such as stocks and bonds, are traded. They enable businesses and governments to raise capital by issuing stocks and bonds to investors. Capital markets can be further divided into primary and secondary markets. In the primary market, newly issued securities are bought and sold directly between issuers and investors, while in the secondary market, existing securities are traded among investors.

2. Stock Markets:
Stock markets, also known as equity markets, are where shares of publicly traded companies are bought and sold. Investors can purchase stocks to become partial owners of companies and participate in their growth and profitability. Stock markets provide liquidity and price discovery for equities, allowing investors to buy and sell shares easily.

3. Bond Markets:
Bond markets, also called debt markets, are where debt securities, such as government bonds, corporate bonds, and municipal bonds, are traded. Bonds represent loans made by investors to issuers, who promise to repay the principal amount along with interest payments over a specified period. Bond markets offer fixed-income securities with varying risk levels and maturities to investors seeking income and portfolio diversification.

4. Foreign Exchange (Forex) Markets:
The foreign exchange market, or forex market, is where currencies are traded. It is the largest and most liquid financial market globally, with trillions of dollars exchanged daily. Forex trading involves buying one currency while simultaneously selling another, with exchange rates fluctuating based on supply and demand dynamics, economic indicators, and geopolitical events.

5. Commodity Markets:
Commodity markets are where raw materials and agricultural products, such as oil, gold, wheat, and coffee, are bought and sold. These markets enable producers and consumers to hedge against price volatility and manage risks associated with fluctuations in commodity prices. Commodity trading can take place through physical exchanges or futures contracts traded on commodity exchanges.

6. Derivatives Markets:
Derivatives markets involve the trading of financial instruments whose value is derived from an underlying asset, index, or benchmark. Examples of derivatives include futures contracts, options, swaps, and forwards. Derivatives provide investors with opportunities to hedge risk, speculate on price movements, and leverage their trading capital.

Understanding the structure and function of financial markets is essential for investors and traders to make informed decisions and navigate the complexities of the global financial system.
  ''',
            isCompleted: false,
          ),
          Lesson(
            name: 'Stock Market Basics',
            content: '''
The stock market is a vital component of the financial system where shares of publicly traded companies are bought and sold. Understanding the basics of the stock market is essential for investors looking to participate in equity investing. Here's a primer on stock market basics:

1. What Are Stocks?
Stocks, also known as equities or shares, represent ownership in a company. When you buy shares of a company's stock, you become a partial owner, entitled to a portion of the company's profits and assets. Stocks are traded on stock exchanges, where buyers and sellers come together to transact.

2. How Stock Markets Work:
Stock markets provide a platform for investors to buy and sell shares of publicly traded companies. The two primary types of stock markets are primary markets and secondary markets. In the primary market, companies issue new shares to raise capital through initial public offerings (IPOs), while in the secondary market, existing shares are bought and sold among investors.

3. Stock Exchanges:
Stock exchanges are organized markets where stocks and other securities are traded. Examples of major stock exchanges include the New York Stock Exchange (NYSE), Nasdaq, London Stock Exchange (LSE), and Tokyo Stock Exchange (TSE). Exchanges provide liquidity, transparency, and price discovery for listed stocks.

4. Stock Indices:
Stock indices are benchmarks that track the performance of a specific group of stocks. They serve as indicators of overall market trends and investor sentiment. Common stock indices include the S&P 500, Dow Jones Industrial Average (DJIA), and Nasdaq Composite. Investors use indices to gauge market performance and evaluate investment strategies.

5. Buying and Selling Stocks:
Investors can buy and sell stocks through brokerage accounts. When buying stocks, investors place orders to purchase shares at a specified price. Market orders are executed at the prevailing market price, while limit orders allow investors to specify the maximum price they are willing to pay. Selling stocks involves placing sell orders to liquidate positions and realize gains or losses.

6. Risks and Rewards:
Investing in stocks carries both risks and rewards. Stock prices can fluctuate based on various factors, including company performance, economic conditions, and market sentiment. While stocks offer the potential for capital appreciation and dividend income, they also entail the risk of loss if share prices decline. Diversification, research, and disciplined investing are key strategies for managing stock market risk.

Understanding stock market basics empowers investors to make informed decisions and navigate the complexities of equity investing. Whether you're a novice or experienced investor, knowledge of the stock market is essential for building wealth and achieving long-term financial goals.
  ''',
            isCompleted: false,
          ),
        ],
      ),
      Subtopic(
        name: 'Types of Investments',
        icon: Icons.attach_money,
        lessons: [
          Lesson(
            name: 'Stocks',
            content: '''
Stocks, also known as shares or equities, represent ownership in a company. When you buy a stock, you're essentially buying a small piece of that company. Companies issue stocks as a way to raise capital to fund their operations and growth.

As a shareholder, you have certain rights, such as the right to vote on company decisions at shareholder meetings and the potential to receive dividends, which are payments made to shareholders from the company's profits.

Stocks are traded on stock exchanges, where buyers and sellers come together to transact. The price of a stock is determined by supply and demand dynamics in the market. If a company performs well and its future prospects look promising, investors may be willing to pay more for its stock, driving up its price. Conversely, if a company faces challenges or has poor performance, its stock price may decline.

Investing in stocks carries risks, as stock prices can be volatile and subject to fluctuations based on various factors such as economic conditions, industry trends, and company-specific developments. However, stocks also offer the potential for capital appreciation over time, making them a popular investment choice for those seeking to build wealth and achieve long-term financial goals.
''',
            isCompleted: false,
          ),
          Lesson(
            name: 'Bonds',
            content: '''
Bonds are debt securities issued by governments, municipalities, or corporations to raise funds. When you buy a bond, you're essentially lending money to the issuer in exchange for regular interest payments, known as coupon payments, and the return of the bond's face value at maturity.

Bonds have a predetermined maturity date, at which point the issuer repays the bondholder the principal amount (the face value) of the bond. Until the bond matures, the issuer typically pays periodic interest payments to the bondholder, usually semiannually or annually.

Bonds are often considered safer investments compared to stocks because they offer fixed income and are typically less volatile. However, they still carry risks, such as interest rate risk and credit risk.

Interest rate risk arises from the inverse relationship between bond prices and interest rates. When interest rates rise, bond prices typically fall, and vice versa. This can affect the value of existing bonds in the secondary market.

Credit risk refers to the risk of default by the bond issuer. If the issuer fails to make interest payments or repay the principal amount at maturity, bondholders may incur losses.

Bonds come in various types, including government bonds, municipal bonds, corporate bonds, and treasury bonds, each with its own risk and return profile.

Overall, bonds play a crucial role in investment portfolios, offering investors a way to generate income and diversify their holdings while managing risk.
''',
            isCompleted: false,
          ),
        ],
      ),
      Subtopic(
        name: 'Order Types',
        icon: Icons.compare,
        lessons: [
          Lesson(
            name: 'Market Order',
            content: '''
A market order is a straightforward type of order used in trading financial instruments, such as stocks or commodities. When you place a market order, you're essentially telling your broker to execute the trade immediately at the current market price. Let's delve deeper into how market orders work and when they might be appropriate for your trading strategy.

How It Works
Execution at Current Price: With a market order, your trade is executed promptly at the prevailing market price. This means that your order will be filled as quickly as possible, regardless of whether the price moves slightly before the trade is completed.

Swift Execution: Market orders prioritize speed over price. They are ideal when you need to enter or exit a position swiftly and are less concerned about getting the best possible price.

Considerations
No Price Guarantee: Since market orders are executed at the prevailing market price, there's no guarantee that you'll get a specific price for your trade. The actual execution price may vary slightly due to market fluctuations.

High Liquidity: Market orders are suitable for highly liquid securities with tight bid-ask spreads. They work well in markets with ample trading volume and price stability.

Risk of Slippage: During fast-moving markets or high volatility, market orders may be subject to slippage. This occurs when the execution price differs from the expected price, potentially resulting in unexpected losses or gains.

Conclusion
Market orders are best suited for traders who prioritize execution speed over price certainty. They're useful when you need to act quickly and are willing to accept the risks associated with potential price fluctuations. However, it's essential to consider your trading objectives, risk tolerance, and market conditions before using market orders for your trades.
''',
            isCompleted: false,
          ),
          Lesson(
            name: 'Limit Order',
            content: '''
A limit order is a type of order used in trading that allows you to specify the maximum price you're willing to pay when buying or the minimum price you're willing to accept when selling. It provides more control over the price at which your trade is executed compared to market orders. Let's explore how limit orders work and when they might be beneficial for your trading strategy.

How It Works
Price Control: With a limit order, you set a specific price at which you want your trade to be executed. If the market price reaches your specified limit price, the order is triggered and executed at that price or better.

Patience Pays Off: Limit orders require patience because they may not be immediately filled. Your order will remain in the market until the specified price is met, or the order expires.

Considerations
Price Certainty: Limit orders provide price certainty, ensuring that you buy or sell at your desired price or better. This can be advantageous in volatile markets or when trading illiquid securities.

Potential Non-Execution: There's a risk that your limit order may not be executed if the market price doesn't reach your specified limit. In such cases, you may need to adjust your price or consider alternative strategies.

Expiration Date: Limit orders typically have an expiration date, after which they are canceled if not executed. It's essential to monitor your limit orders and renew or cancel them as needed.

Conclusion
Limit orders offer traders greater control over their trade execution by allowing them to specify the price at which they want to buy or sell. They are particularly useful for traders who prioritize price certainty and are willing to wait for their desired price level. However, it's crucial to consider market conditions and potential risks when using limit orders in your trading strategy.
''',
            isCompleted: false,
          ),
        ],
      ),
    ],
  ),
  Topic(
    name: 'Technical Analysis',
    icon: Icons.timeline,
    subtopics: [
      Subtopic(
        name: 'Chart Patterns',
        icon: Icons.scatter_plot,
        lessons: [
          Lesson(
            name: 'Introduction to Chart Patterns',
            content: '''
Chart patterns are visual representations of price movements on a trading chart. They can provide valuable insights into market sentiment and potential future price movements. Understanding chart patterns is essential for technical analysts as they help identify trend reversals, continuations, and potential breakout opportunities. Let's explore some common chart patterns and how to interpret them.

Chart patterns are powerful tools for technical analysts to identify potential trading opportunities and make informed decisions. By recognizing and interpreting these patterns, traders can gain insights into market sentiment and anticipate future price movements. However, it's essential to combine chart patterns with other technical analysis tools and risk management strategies for effective trading.
''',
            isCompleted: false,
          ),
          Lesson(
            name: 'Head and Shoulders Pattern',
            content: '''
The head and shoulders pattern consists of three peaks: a higher peak (head) between two lower peaks (shoulders). It indicates a potential trend reversal from bullish to bearish when the neckline support is broken.

Interpretation: A head and shoulders pattern suggests weakening bullish momentum and the potential emergence of a new downtrend. Traders often look for confirmation through volume analysis and other technical indicators.
''',
            isCompleted: false,
          ),
          Lesson(
            name: 'Double Top and Double Bottom',
            content: '''
A double top pattern forms when the price reaches a high (resistance level) twice with a moderate decline between the peaks. Conversely, a double bottom pattern occurs when the price reaches a low (support level) twice with a moderate rally between the troughs.

Interpretation: Double top and bottom patterns indicate potential trend reversals. A double top suggests a shift from bullish to bearish sentiment, while a double bottom suggests a shift from bearish to bullish sentiment.
''',
            isCompleted: false,
          ),
          Lesson(
              name: 'Ascending and Descending Triangles',
              content: '''
Ascending triangles consist of a horizontal resistance level and an upward-sloping trendline acting as support. Descending triangles have a horizontal support level and a downward-sloping trendline acting as resistance.

Interpretation: Ascending triangles are bullish continuation patterns, indicating a likely breakout to the upside. Descending triangles are bearish continuation patterns, suggesting a potential breakdown to the downside.
''',
              isCompleted: false)
        ],
      ),
      Subtopic(
        name: 'Indicators',
        icon: Icons.equalizer,
        lessons: [
          Lesson(
            name: 'Moving Averages',
            content: '''
Moving averages are widely used technical indicators that help traders analyze trends and identify potential entry and exit points in the market. They smooth out price data by creating a constantly updated average price over a specific period, allowing traders to filter out short-term fluctuations and focus on the underlying trend. Let's explore the different types of moving averages and how to use them effectively.

1. Simple Moving Average (SMA)
Description: The simple moving average calculates the average price of an asset over a specified number of periods equally weighted. For example, a 20-day SMA calculates the average closing price of the last 20 days.

Interpretation: SMA helps traders identify the overall direction of the trend. When the current price is above the SMA, it indicates an uptrend, while a price below the SMA suggests a downtrend.

2. Exponential Moving Average (EMA)
Description: The exponential moving average gives more weight to recent prices, making it more responsive to recent price changes compared to the SMA. It reacts faster to price movements, making it popular among short-term traders.

Interpretation: EMA reacts quicker to price changes, allowing traders to capture trend reversals earlier. It's often used to generate trading signals when shorter-term EMAs cross above or below longer-term EMAs.

3. Moving Average Convergence Divergence (MACD)
Description: MACD is a versatile indicator that combines two EMAs: the MACD line (difference between 12-day EMA and 26-day EMA) and the signal line (9-day EMA of the MACD line). It helps identify trend direction, momentum, and potential entry and exit points.

Interpretation: When the MACD line crosses above the signal line, it generates a bullish signal, suggesting a potential uptrend. Conversely, when the MACD line crosses below the signal line, it generates a bearish signal, indicating a potential downtrend.

Conclusion
Moving averages are essential tools for traders to analyze trends and make informed trading decisions. Whether using simple or exponential moving averages, understanding how they work and incorporating them into your trading strategy can help improve your trading success. Additionally, combining moving averages with other technical indicators and risk management techniques can enhance their effectiveness in identifying profitable trading opportunities.
''',
            isCompleted: false,
          ),
          Lesson(
            name: 'RSI (Relative Strength Index)',
            content: '''
Relative Strength Index (RSI) is a popular momentum oscillator used in technical analysis to measure the speed and change of price movements. Developed by J. Welles Wilder, RSI compares the magnitude of recent gains and losses over a specified time period to determine whether a stock or other asset is overbought or oversold.

How RSI Works
RSI is calculated using the following formula:
RSI = 100 - (100 / (1 + (Average Gain / Average Loss)))

The RSI ranges from 0 to 100 and is typically plotted as a line graph.

An RSI above 70 is generally considered overbought, suggesting that the asset may be due for a price correction or reversal.
Conversely, an RSI below 30 is typically interpreted as oversold, indicating that the asset may be undervalued and could experience a price rebound.
Interpreting RSI Signals
RSI can provide valuable insights into market sentiment and potential trend reversals.
Traders often look for divergence between RSI and price movements, where RSI makes new highs or lows while prices do not, indicating a potential reversal.
RSI can also be used to confirm trends and identify bullish or bearish momentum.
Using RSI in Trading
Many traders use RSI as part of their trading strategies to time entry and exit points.
For example, a trader might buy when RSI crosses above 30 from below, indicating a potential bullish reversal, and sell when RSI crosses below 70 from above, signaling a potential bearish reversal.
It's important to use RSI in conjunction with other technical indicators and analysis methods to confirm signals and avoid false positives.
Limitations of RSI
While RSI can be a useful tool, it's not without limitations.
RSI may give false signals in trending markets or during periods of low volatility.
It's essential to consider the broader market context and use RSI in conjunction with other indicators and risk management strategies.
Conclusion
Relative Strength Index (RSI) is a versatile tool for analyzing price momentum and identifying potential trend reversals in financial markets.
By understanding how to interpret RSI signals and integrate them into your trading strategy, you can make more informed trading decisions and improve your overall performance.
''',
            isCompleted: false,
          ),
        ],
      ),
    ],
  ),
  Topic(
    name: 'Risk Management',
    icon: Icons.assessment,
    subtopics: [
      Subtopic(
        name: 'Introduction to Risk Management',
        icon: Icons.dangerous,
        lessons: [
          Lesson(
            name: 'Understanding Risk',
            content: '',
            isCompleted: false,
          ),
          Lesson(
            name: 'Types of Risk',
            content: '',
            isCompleted: false,
          ),
        ],
      ),
      Subtopic(
        name: 'Risk Assessment',
        icon: Icons.assessment_outlined,
        lessons: [
          Lesson(
            name: 'Risk Identification',
            content: '',
            isCompleted: false,
          ),
          Lesson(
            name: 'Risk Analysis',
            content: '',
            isCompleted: false,
          ),
        ],
      ),
    ],
  ),
  Topic(
    name: 'Investment Strategies',
    icon: Icons.monetization_on,
    subtopics: [
      Subtopic(
        name: 'Value Investing',
        icon: Icons.trending_down,
        lessons: [
          Lesson(
            name: 'Fundamental Analysis',
            content: '',
            isCompleted: false,
          ),
          Lesson(
            name: 'Identifying Undervalued Stocks',
            content: '',
            isCompleted: false,
          ),
        ],
      ),
      Subtopic(
        name: 'Growth Investing',
        icon: Icons.trending_up,
        lessons: [
          Lesson(
            name: 'Earnings Growth',
            content: '',
            isCompleted: false,
          ),
          Lesson(
            name: 'Identifying High-Growth Stocks',
            content: '',
            isCompleted: false,
          ),
        ],
      ),
    ],
  ),
];
