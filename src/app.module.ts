import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ProductModule } from './product/product.module';
import { ShopModule } from './shop/shop.module';
import { pgConfig } from '../dbConfig';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forRoot(pgConfig), ProductModule, ShopModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
